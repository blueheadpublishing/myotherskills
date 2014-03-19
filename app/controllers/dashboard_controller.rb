class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
  	 @skills = Skill.all
  end
end