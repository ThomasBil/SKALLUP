class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
  end

  def create
  end

  def update
  end
end
