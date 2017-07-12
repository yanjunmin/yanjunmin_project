class AdminController < ApplicationController
  def index
  	@totals_orders = Order.count
  end
end
