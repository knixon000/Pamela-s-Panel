class CoursesController < ApplicationController
  def index

  end

#creates new courses
  def create
    new_course = Course.create(
      course_name: params[:course][:course_name],
      hours: params[:course][:hours],
    )
    redirect_to '/pages/courses'
  end

#shows a page with all courses
  def index
    @all_courses = Course.all

  end

#deletes a course from the database
  def destroy
    if current_user
      @course = Course.find(params[:id])
      @course.destroy
    end
    redirect_to '/pages/courses'
  end

#should show a page with the course's information
  def show
    redirect_to '/courses/profile'
  end

end
