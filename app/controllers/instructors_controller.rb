class InstructorsController < ApplicationController
  def instructors

  end

  def create
    new_instructor = Instructor.create(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      birthday: params[:instructor][:birthday],
      salary: params[:instructor][:salary],
      education: params[:instructor][:education],
      email: params[:instructor][:email]
    )
    redirect_to '/pages/instructors'
  end

  def index
    @all_instructors = Instructor.all
  end

  def destroy
    if current_user
      @instructor = Instructor.find(params[:id])
      @instructor.destroy
    end
    redirect_to '/pages/instructors'
  end
end
