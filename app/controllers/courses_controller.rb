class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @user = current_user
    @progress = Progress.find_by(course: @course, user: @user )
  end
end
