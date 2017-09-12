class Teacher < ApplicationRecord
  has_many :relationships
  has_many :students, through: :relationships
  has_many :courses, dependent: :destroy
end
