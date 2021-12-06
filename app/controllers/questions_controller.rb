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

    @quizz = @question.family
    @quizz_questions = @quizz.questions
    @un_answers_questions = []
    @bad_answers = []
    @good_answers = []
    @quizz_questions.each do |quizz_question|
      if quizz_question.answers.empty?
        @un_answers_questions << quizz_question
      elsif quizz_question.answers[0].status == false
        @bad_answers << quizz_question
      else
        @good_answers << quizz_question
      end
    end
  end
end
