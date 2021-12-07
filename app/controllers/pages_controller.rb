class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @quizzes = Family.all
    @courses = Course.all
    @perfect = @courses.count + @quizzes.count
    @courses_done = current_user.progresses
  end
end
