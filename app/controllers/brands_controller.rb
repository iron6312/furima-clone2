class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
    @brand_items = Item.where(brand_id: params[:id])
  end
end
