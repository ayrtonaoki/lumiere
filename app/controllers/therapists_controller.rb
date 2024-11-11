class TherapistsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @therapists = Therapist.all
  end

  def new
    @therapist = Therapist.new
  end

  def create
    @therapist = Therapist.new(name: therapist_params[:name], role: therapist_params[:role])

    if @therapist.save
      flash[:message] = 'Terapeuta criada com sucesso.'

      redirect_to therapists_path
    else
      flash[:message] = 'Nome da terapeuta não pode ficar em branco!'

      redirect_to new_therapist_path
    end
end

  private

  def therapist_params
    params.require(:therapist).permit(:name, :role)
  end
end
