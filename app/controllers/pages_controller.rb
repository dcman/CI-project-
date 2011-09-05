class PagesController < ApplicationController
def index
  @title = "Welcome"
  respond_to do |format|
      format.html # index.html.erb
      format.xml  
    end
end
def about
  @title = "About US"
  respond_to do |format|
    format.html
    format.xml 
  end
end
def services 
  @title = "Services"
  respond_to do |format|
    format.html 
    format.xml
  end
end
def testimony
  @title = "Testimony"
  respond_to do |format|
    format.html 
    format.xml
  end
end
def charters
  @title = "Charters"
  respond_to do |format|
    format.html 
    format.xml
  end
end
def contact
  @title = "Contact"
  respond_to do |format|
    format.html 
    format.xml
  end
end
def directions
  @title = "Directions"
  respond_to do |format|
    format.html 
    format.xml
  end
end
def faq
  @title = "FAQ"
  respond_to do |format|
    format.html 
    format.xml
  end
end

end
