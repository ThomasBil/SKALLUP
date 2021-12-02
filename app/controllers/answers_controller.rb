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
    @un_answers_questions = []
    @bad_answers = []

    @quizz_questions.each do |quizz_question|
      if quizz_question.answers.empty?
        @un_answers_questions << quizz_question
      elsif quizz_question.answers[0].status == false
        @bad_answers << quizz_question
      end
    end

    if !@un_answers_questions.empty?
      redirect_to question_path(@un_answers_questions.sample)
    elsif !@bad_answers.empty?
      redirect_to question_path(@bad_answers.sample)
    else
      redirect_to quizzes_path
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
    @quizz = @question.family
    @quizz_questions = @quizz.questions
    @un_answers_questions = []
    @bad_answers = []

    @quizz_questions.each do |quizz_question|
      if quizz_question.answers.empty?
        @un_answers_questions << quizz_question
      elsif quizz_question.answers[0].status == false
        @bad_answers << quizz_question
      end
    end

    if !@un_answers_questions.empty?
      redirect_to question_path(@un_answers_questions.sample)
    elsif !@bad_answers.empty?
      redirect_to question_path(@bad_answers.sample)
    else
      redirect_to quizzes_path
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:user_answer)
  end
end
