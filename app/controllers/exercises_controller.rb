class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      flash[:message] = 'Exercício criado com sucesso.'

      redirect_to exercises_path
    else
      flash[:message] = 'Nome do exercício não pode ficar em branco!'

        redirect_to new_exercise_path
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name)
  end
end
