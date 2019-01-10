class CoursesController < ApplicationController
  def index

  end

  def create
    new_course = Course.create(
      course_name: params[:course][:course_name],
      hours: params[:course][:hours],
    )
    redirect_to '/pages/courses'
  end

  def index
    @all_courses = Course.all
  end

  def destroy
    if current_user
      @course = Course.find(params[:id])
      @course.destroy
    end
    redirect_to '/pages/courses'
  end
end
