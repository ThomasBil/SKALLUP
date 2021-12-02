class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:id])
    @answer.question = @question
    @answer.user = current_user
    raise
  end

  def update
  end

  private

  def answer_params
    params.require(:answer).permit(:user_answer, :question_id)
  end
end
