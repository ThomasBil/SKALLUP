class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @user = current_user
    @progress = Progress.find_by(course: @course, user: @user )
    @family = Family.find_by(courses: @course)
    courses = Course.where(family: @family)
    courses.each_with_index do |course, index|
      if course.id == @course.id
        @next_course = courses[index + 1]
        @prev_course = courses[index - 1]
        if index.zero?
          @prev_course = nil
        end
      end
    end
  end
end
