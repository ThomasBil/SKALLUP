class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @quizzes = Family.all.count
    @courses = Course.all.count
    @perfect = @courses + @quizzes
    @courses_done = current_user.progresses.count
  end
end
