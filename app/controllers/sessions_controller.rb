class SessionsController < ApplicationController
  def new
    render 'new'
  end

  def create_admin
    user = User.find_by(email: params[:user][:email])

    debugger
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      puts "User admin status: #{user.admin}" # Debugging statement
      redirect_to admin_dashboard_path
    else
      puts "User authentication failed" # Debugging statement
      flash.now[:alert] = "Invalid email or password or not an admin"
      render :new
    end
  end
end
