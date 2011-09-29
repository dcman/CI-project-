class AdminsController < ApplicationController
  def new
    @title = "New Admin"
  end
  def show
    @title = "Admin"
    @admin = Admin.find(params[:id])
  end
end
