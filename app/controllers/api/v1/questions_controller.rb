class Api::V1::QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.attributes = {question: params[:question],category: params[:category]}
    if @question.save
      render :show
    else

    end
  end
end
