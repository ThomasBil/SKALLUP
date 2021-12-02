class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question
    @answer.user = current_user
    if @answer.user_answer == @question.correct_answer
      @answer.status = true
    else
      @answer.status = false
    end
    @answer.save!
    @quizz = @question.family
    @quizz_questions = @quizz.questions
    @quizz_questions.each do |quizz_question|
      @next_question = quizz_question
      break if quizz_question.answers.empty?
    end
    if @quizz_questions.last == @question
      redirect_to quizzes_path
    else
      redirect_to question_path(@next_question)
    end
  end

  def update
    @answer = Answer.find(params[:id])
    @new_answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.user_answer = @new_answer.user_answer
    if @answer.user_answer == @question.correct_answer
      @answer.status = true
    else
      @answer.status = false
    end
    @answer.save!
  end

  private

  def answer_params
    params.require(:answer).permit(:user_answer)
  end
end




# offers = Offer.where("income > :value", {value: 3})
