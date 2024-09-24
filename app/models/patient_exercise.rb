class PatientExercise < ApplicationRecord
  belongs_to :patient
  belongs_to :exercise
  belongs_to :therapist
end
