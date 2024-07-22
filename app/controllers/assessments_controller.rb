class AssessmentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @patient = Patient.find(params[:patient_id])
  end
end
