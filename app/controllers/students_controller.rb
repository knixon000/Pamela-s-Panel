class StudentsController < ApplicationController
  def students

  end

  def create
    new_student = Student.create(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      birthday: params[:student][:birthday],
      education: params[:student][:education],
      email: params[:student][:email]
    )
    redirect_to '/pages/students'
  end

  def index
    @all_students = Student.all
  end

  def destroy
    if current_user
      @student = Student.find(params[:id])
      @student.destroy
    end
    redirect_to '/pages/students'
  end

end
