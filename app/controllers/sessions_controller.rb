class SessionsController < ApplicationController
  def new
  end
  
  def create
    info = params[:user]
    user = User.find_by(email: info[:email].downcase)
    if user && user.authenticate(info[:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      flash[:notice] = "You have been logged in."
      redirect_to root_path
    else
      # Create an error message.
      flash.now[:notice] = 'Invalid email/password combination'
      flash[:email] = info[:email].downcase
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:notice] = 'You have been logged out.'
    redirect_to root_path
  end
end
