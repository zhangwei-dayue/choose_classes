class StudentCourseRelationshipsController < ApplicationController
  def create
    @student = Student.find(params[:student_id])
    @course = Course.find(params[:course_id])
    @student.student_course_relationships.create!(course_id: course_id)
    @student.relationships.create!(teacher_id: @course.teacher.id)
  end
end
