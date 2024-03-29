class ParticeipantsController < ApplicationController
  before_filter :authenticate, :except =>[:show]
  # GET /particeipants
  # GET /particeipants.xml
  def index
    redirect_to '/admin'
  end

  # GET /particeipants/1
  # GET /particeipants/1.xml
  def show
    @particeipant = Particeipant.find(params[:id])
    @survey = @particeipant.trip.survey
    @title = 'Particeipant'
    @i = 1
    if @particeipant.id.to_s == cookies[:id]
          respond_to do |format|
            format.html # show.html.erb
            format.xml  { render :xml => @particeipant }
          end
    else
      redirect_to feedback_path
    end
    

  end

  # GET /particeipants/new
  # GET /particeipants/new.xml
  def new
    @particeipant = Particeipant.new(:trip_id => params[:trip_id])
    @title = 'New Particeipant'
    respond_to do |format|
      format.html
      format.xml  { render :xml => @particeipant }
    end
  end

  # GET /particeipants/1/edit
  def edit
    @particeipant = Particeipant.find(params[:id])
    @title = 'Edit Particeipant'
  end

  # POST /particeipants
  # POST /particeipants.xml
  def create
    @particeipant = Particeipant.new(params[:particeipant])
    @title = 'Create Particeipant'
    respond_to do |format|
      if @particeipant.save
        format.html { redirect_to("/trips/" + @particeipant.trip_id.to_s ) }
        format.xml  { render :xml => @particeipant, :status => :created, :location => @particeipant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @particeipant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /particeipants/1
  # PUT /particeipants/1.xml
  def update
    @particeipant = Particeipant.find(params[:id])
    @title = 'Update Particeipant'
    respond_to do |format|
      if @particeipant.update_attributes(params[:particeipant])
        format.html { redirect_to(@particeipant, :notice => 'Particeipant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @particeipant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /particeipants/1
  # DELETE /particeipants/1.xml
  def destroy
    @particeipant = Particeipant.find(params[:id])
    @particeipant.destroy
    @title = "Destroy Particeipant"
    respond_to do |format|
      format.html { redirect_to("/trips/" + @particeipant.trip_id.to_s) }
      format.xml  { head :ok }
    end
  end
  private

  def authenticate
    deny_access unless signed_in?
  end
end
