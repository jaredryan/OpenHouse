class ReportsController < ApplicationController
    before_action do
        @user = current_user
    end
    
    def report_params
        params.require(:report).permit(:email, :password, :username)
    end
    
    def new
        if not logged_in?
            flash[:notice] = "You must login to submit a report."
            redirect_to login_path
        end
    end
    
    def open
        if not logged_in?
            flash[:notice] = "You must login to submit a report."
        else
            flash[:clicked] = true
        end
        redirect_to root_path
    end
    
    def close
        flash[:clicked] = nil
        redirect_to root_path
    end

    def create
        @zip = params[:zipPost]
        @lake = params[:waterPost]
        
        if @lake == ""
            flash[:notice] = "Please enter a lake name."
            redirect_to root_path
            return
        end
        
        @boat_traffic = params[:boatTraffic]
        @beach_crowd = params[:beachCrowd]
        @boat_ramp = params[:boatRamp]
        @general = params[:text]
        
        @generalForm = {
            boatTraffic: @boat_traffic,
            beachCrowd: @beach_crowd,
            boatRamp: @boat_ramp,
            text: @general
        }
        
        # Check to see if it already exists
        endpoint = "http://freshwater.dynu.net/api/freshwater/"
        @water_response = HTTParty.get(endpoint + "SearchLake/" + @lake)
        @water_info = @water_response.parsed_response[0]
        
        # Use put or post as needed
        # if @water_info === nil || @water_info["ZipCode"]["Zip"] != @zip
        #     # Add way to get more location information based off of zip code
        #         ### AWESOME ZIP CODE SEARCH API SEARCH THING CODE
        #         ### Use this to fill out zipcode sub-object
        #     # Post if it doesn't exist
        #     @response = HTTParty.post(endpoint, body: {
        #         "LakeName": @lake,
        #         "LakeDeleted": false,
        #         "AppUser": null,
        #         "Biologicals": [],
        #         "Environmentals": [],
        #         "Generals": [@generalForm],
        #         "ZipCode": {
        #             "ZipCodeID": 51,
        #             "Zip": @zip,
        #             "City": "",
        #             "State": "",
        #             "Latitude": "",
        #             "Longitude": ""
        #         },
        #         "Socials": []
        #         })
        # else
        #     # Put if it does exist
            
        #     @generalArray = @water_info["Generals"]
        #     @generalArray.unshift(@generalForm)
        #     @response = HTTParty.put(endpoint + "SearchLake/" + @lake, body: {
        #         "Generals": @generalArray
        #     })
        # end
        
        
        flash[:clicked] = nil
        flash[:notice] = "Thank you for your submission!"

        redirect_to root_path
    end
    
    def env_create
        
        @zip = params[:zip]
        @lake = params[:water]
        
        if @lake == ""
            flash[:notice] = "Please enter a lake name."
            redirect_to new_report_path
            return
        end
        
        # Good
       
        # @boat_traffic = params[:boatTraffic]
        # @beach_crowd = params[:beachCrowd]
        # @boat_ramp = params[:boatRamp]
        # @general = params[:text]
        
        
        # Put data into database
        
    
        
        
        # @report = Report.create(params)
        flash[:notice] = "Thank you for your submission!"
        redirect_to root_path
    end
    
    def bio_create
        
        @zip = params[:zip]
        @lake = params[:water]
        
        if @lake == ""
            flash[:notice] = "Please enter a lake name."
            redirect_to new_report_path
            return
        end
        
        # Good
        
        # @boat_traffic = params[:boatTraffic]
        # @beach_crowd = params[:beachCrowd]
        # @boat_ramp = params[:boatRamp]
        # @general = params[:text]
        
        
        # Put data into database
        
    
        # @report = Report.create(params)
        flash[:notice] = "Thank you for your submission!"
        redirect_to root_path
    end
    
    def soc_create
        
        @zip = params[:zip]
        @lake = params[:water]
        
        if @lake == ""
            flash[:notice] = "Please enter a lake name."
            redirect_to new_report_path
            return
        end
        
        # Good
        
        # @boat_traffic = params[:boatTraffic]
        # @beach_crowd = params[:beachCrowd]
        # @boat_ramp = params[:boatRamp]
        # @general = params[:text]
        
        
        # Put data into database
        
    
        # @report = Report.create(params)
        flash[:notice] = "Thank you for your submission!"
        redirect_to root_path
    end
    
    def open_env
        if not logged_in?
            flash[:notice] = "You must login to submit a report."
        else
            flash[:env] = true
        end
        redirect_to new_report_path
    end
    
    def open_bio
        if not logged_in?
            flash[:notice] = "You must login to submit a report."
        else
            flash[:bio] = true
        end
        redirect_to new_report_path
    end
    
    def open_soc
        if not logged_in?
            flash[:notice] = "You must login to submit a report."
        else
            flash[:soc] = true
        end
        redirect_to new_report_path
    end
end