class StoreController < ApplicationController
  def index
  	@products = Product.paginate :page => params[:page], :per_page => 3
  	@cart = current_cart
  end
end
