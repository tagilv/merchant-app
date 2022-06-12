class WarehousesController < ApplicationController
  before_action :find_warehouse, only: [:show, :edit, :update, :destroy]
  def index
    @warehouses = Warehouse.all
  end

  def show
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.create(warehouse_params)
    redirect_to warehouse_path(@warehouse)
  end

  def edit
  end

  def update
    @warehouse.update(warehouse_params)
    redirect_to warehouse_path(@warehouse)
  end

  def destroy
    @warehouse.destroy
    redirect_to warehouses_path
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:name, :location)
  end

  def find_warehouse
    @warehouse = Warehouse.find(params[:id])
  end
end
