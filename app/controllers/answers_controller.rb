class AnswersController < ApplicationController

  # GET /answers
  # GET /answers.xml
  def index
    redirect_to '/admin'
  end

  # GET /answers/1
  # GET /answers/1.xml
  def show
    @answer = Answer.find(params[:id])
    @title = "Answer"
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @answer }
    end
  end

  # GET /answers/new
  # GET /answers/new.xml
  def new
    @answer = Answer.new
    @title = 'New Answer'
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @answer }
    end
  end

  # GET /answers/1/edit
  def edit
    @answer = Answer.find(params[:id])
    @title = 'Edit Answer'
  end

  # POST /answers
  # POST /answers.xml
  def create
    @answer = Answer.new(params[:answer])
    @title = 'Create Answer'
    respond_to do |format|
      if @answer.save
        format.html { redirect_to :back }
        format.xml  { render :xml => @answer, :status => :created, :location => @answer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /answers/1
  # PUT /answers/1.xml
  def update
    @answer = Answer.find(params[:id])
    @title = 'Update Anster'
    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to :back }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.xml
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    @title = 'Destroy Answer'
    respond_to do |format|
      format.html { redirect_to(answers_url) }
      format.xml  { head :ok }
    end
  end
  private

  def authenticate
    deny_access unless signed_in?
  end
end
