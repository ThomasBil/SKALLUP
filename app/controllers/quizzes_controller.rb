class QuizzesController < ApplicationController
  def index
    @quizzes = Family.all
  end
end
