class PatientExercisesController < ApplicationController
  def index
    @article = PatientExercise.first
  end

  def success
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(success: patient_exercise.success + 1)
    patient_exercise.update(attempts: patient_exercise.attempts + 1)

    redirect_to start_session_assessments_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def failed
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(failed: patient_exercise.failed + 1)
    patient_exercise.update(attempts: patient_exercise.attempts + 1)

    redirect_to start_session_assessments_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def help
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(help: patient_exercise.help + 1)
    patient_exercise.update(attempts: patient_exercise.attempts + 1)

    redirect_to start_session_assessments_path(patient_exercise_ids: params[:patient_exercise_ids])
  end
end
