class SessionsController < ApplicationController

  def new
    @title = "Sign in"
    @admins = Admin.all
  end
  
  def create
    admin = Admin.authenticate(params[:session][:email],
                             params[:session][:password])
    if admin.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
    else
      sign_in admin
      redirect_to :back
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end