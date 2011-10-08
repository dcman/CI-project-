class QuestionsController < ApplicationController
  before_filter :authenticate
  # GET /questions
  # GET /questions.xml
  def index
    redirect_to '/admin'
  end

  # GET /questions/1
  # GET /questions/1.xml
  def show
    @question = Question.find(params[:id])
    @title = 'Show Question'
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.xml
  def new
    @question = Question.new(:survey_id => params[:survey_id],:q_n => params[:q_n])
    @title = 'New Question'
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
    @title = 'Edit Question'
  end

  # POST /questions
  # POST /questions.xml
  def create
    @question = Question.new(params[:question])
    @title = "Create Question"
    respond_to do |format|
      if @question.save
        format.html { redirect_to(@question, :notice => 'Question was successfully created.') }
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.xml
  def update
    @question = Question.find(params[:id])
    @title = 'Update Question'
    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to :back}
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.xml
  def destroy
    @title = 'Destroy Question'
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to('/surveys/' + @question.survey.id.to_s + '?f=true') }
      format.xml  { head :ok }
    end
  end
  private

  def authenticate
    deny_access unless signed_in?
  end
end
