class CoursesController < ApplicationController
  def index

    if params[:duration].present?
      @courses = Course.where("duration <= ?", params[:duration])
    elsif params[:family].present?
      @courses = Course.joins(:family).where("families.name = ?", params[:family])
    elsif params[:difficulty].present?
      @courses = Course.where(" difficulty = ?", params[:difficulty])
    else
      @courses = Course.all
    end
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
