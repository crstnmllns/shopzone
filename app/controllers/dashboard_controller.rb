class DashboardController < ApplicationController

  before_action :authenticate_user!
  def index
      @user = User.all
      @ord = Order.all
  end

  def show

  end

  def order

    @orders = Order.search(params[:search])
  end
end
