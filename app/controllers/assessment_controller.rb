class AssessmentController < ApplicationController
  before_action :authenticate_user!
  def index
    @patients = Patient.all
  end
end
