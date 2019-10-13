class StudentsController < ApplicationController
  
  # before_action :find_student_id, only: show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  # private
  # def find_student_id
  #   @student = student.find(find_by[:id])
  # end

end
