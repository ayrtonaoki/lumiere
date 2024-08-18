class PatientExercisesController < ApplicationController
  def index
    @patient_exercises = PatientExercise.available_exercises
  end

  def show
    @patient_exercises = PatientExercise.where(patient_id: params[:id]).order(:id)
    @patient_exercises.update_all(attempts: 0)

    exercise_ids = @patient_exercises.pluck(:exercise_id)
    @available_exercises = Exercise.available_exercises(exercise_ids)
  end

  def new
    @patient_exercise = PatientExercise.new
  end

  def create
    @patient_exercise = PatientExercise.new(patient_id: patient_exercise_params[:patient_id], exercise_id: patient_exercise_params[:exercise_id])
    @patient_exercise.save
    redirect_to patient_exercise_path(patient_exercise_params[:patient_id])
  end

  def start_session
    if params[:patient_exercise_ids].nil?
      flash[:message] = 'Selecione ao menos um exercício para iniciar a avaliação.'
      redirect_back(fallback_location: root_path)
    end

    @patient_exercises = PatientExercise.where(id: params[:patient_exercise_ids]).order(:id)
  end

  def success
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(success: patient_exercise.success + 1)
    patient_exercise.update(attempts: patient_exercise.attempts + 1)

    redirect_to start_session_patient_exercises_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def deduct_success
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(success: patient_exercise.success - 1)
    patient_exercise.update(attempts: patient_exercise.attempts - 1)

    redirect_to start_session_patient_exercises_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def failed
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(failed: patient_exercise.failed + 1)
    patient_exercise.update(attempts: patient_exercise.attempts + 1)

    redirect_to start_session_patient_exercises_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def deduct_failed
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(failed: patient_exercise.failed - 1)
    patient_exercise.update(attempts: patient_exercise.attempts - 1)

    redirect_to start_session_patient_exercises_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def help
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(help: patient_exercise.help + 1)
    patient_exercise.update(attempts: patient_exercise.attempts + 1)

    redirect_to start_session_patient_exercises_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  def deduct_help
    patient_exercise = PatientExercise.find(params[:id])
    patient_exercise.update(help: patient_exercise.help - 1)
    patient_exercise.update(attempts: patient_exercise.attempts - 1)

    redirect_to start_session_patient_exercises_path(patient_exercise_ids: params[:patient_exercise_ids])
  end

  private

  def patient_exercise_params
    params.permit(:patient_id, :exercise_id)
  end
end
