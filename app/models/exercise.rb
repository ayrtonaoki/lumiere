class Exercise < ApplicationRecord
  has_many :patient_exercises
  has_many :patients, through: :patient_exercises
end
