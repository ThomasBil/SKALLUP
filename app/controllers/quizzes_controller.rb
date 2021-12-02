class QuizzesController < ApplicationController
  def index
    @quizzes = Family.all
    @next_question = nil
  end
end
