module PatientExerciseHelper
  def category_options
    [['Technology', 'technology'], ['Science', 'science'], ['Arts', 'arts']]
  end

  def total_attempts(patient_exercise)
    patient_exercise.success + patient_exercise.failed + patient_exercise.help
  end

  def patient_exercise_ids(patient_exercises)
    patient_exercises.pluck(:id)
  end
end
