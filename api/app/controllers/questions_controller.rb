class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    render json: Question.all, each_serializer: QuestionSerializer
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    render json: @question
  end

  # POST /questions
  # POST /questions.json
  def create
    choice_a = Choice.new(params[:choices]).save

    question = Question.new(question_params)
    question.choices = [choice_a, choice_b]

    if @question.save
      render json: question, status: :created, location: question
    else
      render json: question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      head :no_content
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy

    head :no_content
  end

  private

    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:question)
    end
end
