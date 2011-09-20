class AdminsController < ApplicationController
  def index
    @title = "Admins"
  end
  def show
    @title = "Admin"
    @admin = Admin.find(params[:id])
  end

  def new
    @title = "Create Admin"
    @admin = Admin.new
  end
  
  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      redirect_to @admin
    else
      @title = "Create Admin"
      render 'new'
    end
  end
end
