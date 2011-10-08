class SurveysController < ApplicationController
  before_filter :authenticate
  # GET /surveys
  # GET /surveys.xml
  def index
    redirect_to root_path
  end

  # GET /surveys/1
  # GET /surveys/1.xml
  def show
    @survey = Survey.find(params[:id])
    @title = "Survey"
    fix(@survey) if params[:f] = 't'
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @survey }
    end
  end

  # GET /surveys/new
  # GET /surveys/new.xml
  def new
    @survey = Survey.new(:trip_id => params[:trip_id])
    @survey.update_attribute(:date, @survey.trip.date)
    @title = "New Survey"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @survey }
    end
  end

  # GET /surveys/1/edit
  def edit
    @survey = Survey.find(params[:id])
  end

  # POST /surveys
  # POST /surveys.xml
  def create
    @survey = Survey.new(params[:survey])
    @title = "Create Survey"
    respond_to do |format|
      if @survey.save
        format.html { redirect_to(@survey, :notice => 'Survey was successfully created.') }
        format.xml  { render :xml => @survey, :status => :created, :location => @survey }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /surveys/1
  # PUT /surveys/1.xml
  def update
    @survey = Survey.find(params[:id])
    @title = "Update Survey"
    respond_to do |format|
      if @survey.update_attributes(params[:survey])
        format.html { redirect_to(@survey, :notice => 'Survey was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.xml
  def destroy
    @title = "Delete Survey"
    @survey = Survey.find(params[:id])
    @survey.destroy

    respond_to do |format|
      format.html { redirect_to(surveys_url) }
      format.xml  { head :ok }
    end
  end

  def fix (s)
    s.question.each_with_index do |q,i|
      q.update_attribute(:q_n, i + 1)
    end
  # redirect_to(s)
  end

  private

  def authenticate
    deny_access unless signed_in?
  end
end
