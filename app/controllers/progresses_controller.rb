class ProgressesController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @user = current_user
    @progress = Progress.new(completed: true)
    @progress.course = @course
    @progress.user = @user
    @progress.save!
  end
end
