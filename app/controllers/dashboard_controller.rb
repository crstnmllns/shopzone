class DashboardController < ApplicationController

  before_action :authenticate_user!
  def index
      @user = User.all
  end

  def show

  end
  
  def order
      @orders = Order.all
  end
end
