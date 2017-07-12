class StoreController < ApplicationController
	skip_before_filter :authorize #忽略过滤器，即：所谓的白名单
  def index
  	@products = Product.paginate :page => params[:page], :per_page => 3
  	@cart = current_cart
  end
end
