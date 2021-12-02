class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @courses_done = @user.progresses
    @quizzes = Family.all
    @quizzes.each do |
    @quizzes_done =
    raise
    @courses = Course.all
    @perfect = @courses.count + @quizzes.count

  end
end
