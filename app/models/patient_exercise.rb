class PatientExercise < ApplicationRecord
  belongs_to :patient
  belongs_to :exercise

  scope :available_exercises, ->(patient_id) { where.not(patient_id: patient_id) }
end
