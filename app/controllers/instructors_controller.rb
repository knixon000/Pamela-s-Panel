class InstructorsController < ApplicationController
  def instructors

  end

  def create
    new_instructor = Instructor.create(
      first_name: params[:instructor][:first_name],
      last_name: params[:instructor][:last_name],
      birthday: params[:instructor][:birthday],
      salary: params[:instructor][:salary],
      education: params[:education],
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

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    @instructor.save
    redirect_to '/pages/instructors'
  end

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :birthday, :education, :email)
  end
end
