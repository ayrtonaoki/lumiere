module AssessmentHelper
  def attempts(patient_exercise)
    patient_exercise.success + patient_exercise.failed + patient_exercise.help
  end
end
