class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:answer).permit(:user_answer, :question_id)
  end
end
