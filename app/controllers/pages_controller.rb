class PagesController < ApplicationController
def index
  @title = "Welcome"
  respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
end
end
