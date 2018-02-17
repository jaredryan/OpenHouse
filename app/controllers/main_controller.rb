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
        @water = params[:water]
        @zip = params[:zip]
        flash[:searched] = true
        
        # Write code to update page but not refresh with filtered results
        endpoint = "http://www.freshwaterapi.com/api/freshwater/getlakesbyzip/"
        # @response = HTTParty.get(endpoint + @zip)
        
        # If valid, display responses if valid
        # Else, flash[:notice] = "Your input did not find a match in the database."
        
        # Below redirect currently refreshes the page
        redirect_to root_path
    end

    
    def about
    end
end