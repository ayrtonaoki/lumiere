class Exercise < ApplicationRecord
  has_many :patient_exercises
  has_many :patients, through: :patient_exercises

  scope :available_exercises, ->(exercise_ids) { where.not(id: exercise_ids) }
end
