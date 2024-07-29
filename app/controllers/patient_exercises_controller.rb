class PatientExercisesController < ApplicationController
  def success
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(success: patient_exercise.success + 1)
    patient_exercise.update(attempts: patient_exercise.attempts + 1)

    redirect_to start_session_assessments_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def failed

  end

  def help

  end
end
