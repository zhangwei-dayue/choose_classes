class Student < ApplicationRecord
  has_many :relationships
  has_many :teachers, through: :relationships
  has_many :student_course_relationships
  has_many :courses, through: :student_course_relationships
end
