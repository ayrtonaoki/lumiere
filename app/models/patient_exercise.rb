class PatientExercise < ApplicationRecord
  belongs_to :patient
  belongs_to :exercise
  has_one :session_exercise
end
