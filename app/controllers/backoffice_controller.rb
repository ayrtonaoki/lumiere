class BackofficeController < ApplicationController
  before_action :authenticate_admin!
end
