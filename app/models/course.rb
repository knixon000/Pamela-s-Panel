class Course < ApplicationRecord
  has_and_belongs_to_many :cohorts
  has_many :students, through: :cohorts
end
