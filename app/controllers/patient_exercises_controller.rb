class PatientExercisesController < ApplicationController
  def success
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(success: patient_exercise.success + 1)

    session_exercise = SessionExercise.find_by(patient_exercise_id: params[:id])
    session_exercise.update(attempts: session_exercise.attempts + 1)

    redirect_to start_session_assessments_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def failed

  end

  def help

  end
end
