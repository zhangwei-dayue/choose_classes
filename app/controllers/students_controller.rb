class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.create(student_params)
    redirect_to @student
  end

  def show
    @student = Student.find(params[:id])
    @courses = @student.courses.include(:teacher)
  end

  private
    def student_params
      params.require(:student).permit(:name)
    end
end
