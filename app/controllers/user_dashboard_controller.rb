class UserDashboardController < ApplicationController
  before_action :authenticate_consumer!
  def index
  end
end
