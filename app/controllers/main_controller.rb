class MainController < ApplicationController
    before_action do
        @user = current_user
    end
    
    def search_params
        params.require(:search).permit(:water, :zip)
    end
    
    def show
    end
    
    def search
        session.delete(:results)
        @water = params[:water]
        @zip = params[:zip]
        
        if @water === "" && @zip === ""
            flash[:notice] = "Please enter a lake name or a zip code."
            redirect_to root_path
            return
        elsif @zip != ""
            flash[:notice] = "Searching by zip code is not yet functional."
            redirect_to root_path
            return
        end
        
        flash[:searched] = true
        
        # Write code to update page but not refresh with filtered results
        endpoint = "http://freshwater.dynu.net/api/freshwater/"
        
        @water_response = HTTParty.get(endpoint + "SearchLake/" + @water)
        # @zip_info = 
        @water_info = @water_response.parsed_response[0]
        
        @name = @water_info["LakeName"]
        @general = @water_info["Generals"]
        @username = @water_info["AppUser"] || "Unknown User"
        @zip_code = @water_info["ZipCode"]["Zip"] || "Unknown Zip Code"
        
        session[:results] = [{name: @name, general: @general, username: @username, zip_code: @zip_code}]

        # Currently not functional
        # @zip_response = HTTParty.get(endpoint + "GetLakeByZip/" + @zip)

        

        redirect_to root_path
    end

    
    def about
    end
end