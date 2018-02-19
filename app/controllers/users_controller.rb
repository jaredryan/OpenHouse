class UsersController < ApplicationController
    def user_params
        params.require(:user).permit(:email, :password, :username, :password_digest)
    end

    def new
    end
    
    def create
        @user = User.create(user_params)
        next_path = new_user_path
        if @user.errors.empty?
            next_path = root_path
            log_in @user
            flash[:notice] = "#{@user.email} was successfully created."
        else
            msg = ""
            @user.errors.keys.each do |var|
                msg = msg + "#{var} #{@user.errors[var][0]}, "
            end
            flash[:notice] = msg[0..-3]
            flash[:email] = @user.email
            flash[:username] = @user.username
        end
        redirect_to next_path
    end
    
    def edit
        @user = current_user
    end

    def update
        @user = current_user
        @user.update_attributes(user_params)
        @user.save!
        flash[:notice] = "Your account has been updated."
        redirect_to root_path
    end
    
    def destroy
        @user = current_user
        log_out
        @user.destroy
        flash[:notice] = "Your account has been deleted."
        redirect_to root_path
    end
end