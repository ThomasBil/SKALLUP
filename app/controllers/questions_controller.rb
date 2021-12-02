class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @user = current_user
    @user_answers = @user.answers
    @user_answers.each do |user_answer|
      if user_answer.question == @question
        @status = true
        @user_answer = user_answer
      end
    end
  end
end
