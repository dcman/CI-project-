class AdminsController < ApplicationController
  def index
  redirect_to '/admin'
  end

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

  def edit
    @title = "Edit"
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to @admin, :flash => { :success => "Profile updated." }
    else
      @title = "Edit"
      render 'edit'
    end
  end

  def destroy
    @admin = Admin.find(params[:id])
    if @admin == current_admin
      redirect_to admins_path, :flash => {:notice => 'You can not destroy your self'}
    else
      @admin.destroy
      redirect_to admins_path, :flash => { :notice => "Admin destroyed." }
    end
  end
end
