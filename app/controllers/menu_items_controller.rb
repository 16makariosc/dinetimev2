class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show]

  def show
  end

  def upvote
    @item = MenuItem.find(params[:id])
    @item.update_attribute(:rating, @item.rating + 1)
    redirect_to(@item)
  end

  private
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end
end