class AdminsController < ApplicationController
  def new
    @title = "Admin"
    @admin = Admin.new
  end

  def show
    @title = "Admin"
    @admin = Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      redirect_to admins_path
      else
      @title = "Admin"
      render 'new'
    end
  end
end
