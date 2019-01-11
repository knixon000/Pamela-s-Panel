class Instructor < ApplicationRecord
  has_and_belongs_to_many :cohorts
  has_many :courses, through: :cohorts
end
