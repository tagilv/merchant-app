class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.create(warehouse_params)
    redirect_to warehouse_path(@warehouse)
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  def update
    @warehouse = Warehouse.find(params[:id])
    @warehouse.update(warehouse_params)
    redirect_to warehouse_path(@warehouse)
  end

  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy
    redirect_to warehouses_path
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:name, :location)
  end
end
