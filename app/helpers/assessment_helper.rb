module AssessmentHelper
  def total_attempts(patient_exercise)
    patient_exercise.success + patient_exercise.failed + patient_exercise.help
  end
end
