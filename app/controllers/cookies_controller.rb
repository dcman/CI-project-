class CookiesController < ApplicationController
 
  def new
    @title = 'Feed back'
  end
  def create
    p = Particeipant.find_by_email(params[:cookies][:email])
    
    if p.nil?
      flash.now[:error] = "Invalid email"
      render 'new'
    else
      cookies[:id] = p.id
      redirect_to p
    end
  end
end
