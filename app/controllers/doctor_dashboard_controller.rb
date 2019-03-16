class DoctorDashboardController < ApplicationController
  before_action :authenticate_doc!
  def index
  end
end
