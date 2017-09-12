class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all.include(:courses)
  end

  def new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    redirect_to teachers_path
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end

  private
    def teacher_params
      params.require(:teacher).permit(:name)
    end
end
