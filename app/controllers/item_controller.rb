class ItemController < ApplicationController
  def show
    @items = Item.all
  end

  def get
    @item = Item.find(params[:id])
    @item.add_hits
    @isPossible = !current_user.bought_current_item?(@item.id)
  end

  def buy
    item_id = params[:id]
    @item = Item.find(item_id)
    @item.buy(current_user.id)
  end

  def my_item
    @my_items = current_user.get_my_items
  end
end
