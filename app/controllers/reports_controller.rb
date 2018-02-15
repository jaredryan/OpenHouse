class ReportsController < ApplicationController
    before_action do
        @user = current_user
    end
    
    def report_params
        params.require(:report).permit(:email, :password, :username)
    end
    
    def new
    end

    def create
        
        @boat_traffic = params[:boatTraffic]
        @beach_crowd = params[:beachCrowd]
        @boat_ramp = params[:boatRamp]
        @general = params[:text]
        
        
        # Put data into database
        
    
        # @report = Report.create(params)
        redirect_to root_path
    end
    
    def env_create
        
       # Good
        
        # @boat_traffic = params[:boatTraffic]
        # @beach_crowd = params[:beachCrowd]
        # @boat_ramp = params[:boatRamp]
        # @general = params[:text]
        
        
        # Put data into database
        
    
        # @report = Report.create(params)
        redirect_to root_path
    end
    
    def bio_create
        
        # Good
        
        # @boat_traffic = params[:boatTraffic]
        # @beach_crowd = params[:beachCrowd]
        # @boat_ramp = params[:boatRamp]
        # @general = params[:text]
        
        
        # Put data into database
        
    
        # @report = Report.create(params)
        redirect_to root_path
    end
    
    def soc_create
        
        # Good
        
        # @boat_traffic = params[:boatTraffic]
        # @beach_crowd = params[:beachCrowd]
        # @boat_ramp = params[:boatRamp]
        # @general = params[:text]
        
        
        # Put data into database
        
    
        # @report = Report.create(params)
        redirect_to root_path
    end
end