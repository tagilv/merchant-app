class ProductsController < ApplicationController
  before_action :find_warehouse
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.warehouse = @warehouse
    if @product.save
      redirect_to warehouse_path(@warehouse)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :quantity)
  end

  def find_warehouse
    @warehouse = Warehouse.find(params[:warehouse_id])
  end
end
