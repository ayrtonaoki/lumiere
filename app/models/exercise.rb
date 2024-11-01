class Exercise < ApplicationRecord
  has_many :patient_exercises
  has_many :patients, through: :patient_exercises

  validates :name, presence: { message: "Nome não pode ficar em branco" }

  scope :available_exercises, ->(patient_id) { where.not(id: PatientExercise.where(patient_id: patient_id).select(:exercise_id)) }
end
