class CoursesController < ApplicationController
  def index

    if params[:search].present?
      @courses = []
      @selected_courses = Course.where("duration >= ?", params[:search][:duration])
      @selected_courses.each do |course|
        if course.family.name == params[:search][:family]
          @courses << course
        end
      end

      if @courses.size == 0
        @courses = @selected_courses
      end
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
