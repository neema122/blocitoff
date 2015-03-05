class ItemsController < ApplicationController
  
   def create
    @list = List.find(params[:list_id])
  
    @items = @list.items

    @item = current_user.items.build( item_params )
    @item.list = @list
    @new_item = Item.new  
   end
end