class DashboardsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @image = Image.new
  end
end
