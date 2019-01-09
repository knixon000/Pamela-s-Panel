class Instructor < ApplicationRecord
  has_and _belongs_to_many :cohorts 
end
