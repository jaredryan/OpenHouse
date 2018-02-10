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
        
        
        
        
        
        
        byebug
        @report = Report.create(report_params)
        redirect_to root_path
    end
end