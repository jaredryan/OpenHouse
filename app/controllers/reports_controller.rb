class ReportsController < ApplicationController
    before_action do
        @user = current_user
    end
    
    def report_params
        params.require(:report).permit(:email, :password, :username)
    end
    
    def new
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
        
        @boat_traffic = params[:boatTraffic]
        @beach_crowd = params[:beachCrowd]
        @boat_ramp = params[:boatRamp]
        @general = params[:text]
        
        flash[:clicked] = nil
        # Put data into database
        
        flash[:notice] = "Thank you for your submission!"
    
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
        flash[:notice] = "Thank you for your submission!"
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
        flash[:notice] = "Thank you for your submission!"
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
        flash[:notice] = "Thank you for your submission!"
        redirect_to root_path
    end
end