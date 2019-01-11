class StudentsController < ApplicationController
  def students

  end

  def create
    new_student = Student.create(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name],
      birthday: params[:student][:birthday],
      education: params[:education],
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

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    @student.save
    redirect_to '/pages/students'
  end

  # def student_profile
  #   @student = Student.find(params[:id])
  #   redirect_to '/students/:id/student_profile'
  # end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :birthday, :education, :email)
  end
end
