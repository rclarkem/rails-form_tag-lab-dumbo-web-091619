class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    # @student = Student.new
  end

  def create
    # byebug
    # @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    session[:form_params] = params.inspect
# redirect_to new_student_path
    redirect_to new_student_path
  end

  private

   def set_student
     @student = Student.find(params[:id])
   end

end
