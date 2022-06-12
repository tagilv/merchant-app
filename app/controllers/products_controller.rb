class ProductsController < ApplicationController
  def new
    @products = Product.new
  end
end
