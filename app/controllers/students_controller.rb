class StudentsController < ApplicationController
  def students

  end

  def create
    new_student = Student.create(first_name: params["first-name"], last_name: params["last-name"], birthday: params["dob"], education: params["education"], email: params["signup-email"])

    redirect_to '/users/students'
  end
end
