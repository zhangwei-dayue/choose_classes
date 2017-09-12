class CoursesController < ApplicationController
  def new
  end

  def create
    @course = Course.create(course_params)
    redirect_to teachers_path
  end

  private
    def course_params
      params.require(:course).permit(:name, :teacher_id)
    end
end
