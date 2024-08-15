class Exercise < ApplicationRecord
  has_many :patient_exercises
  has_many :patients, through: :patient_exercises

  validates :name, presence: { message: "Nome não pode ficar em branco" }

  scope :available_exercises, ->(exercise_ids) { where.not(id: exercise_ids) }
end
