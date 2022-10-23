class Admins::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admins_item_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id, :price, :is_active)
  end
end
