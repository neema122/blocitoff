class ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = current_user.items
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to items_path, notice: 'Item created'
    else
      flash[:error] = "There was an error saving your item"
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if  @item.delete
      flash[:notice] = "Your item has been completed."
      redirect_to user_show_path
    else
      flash[:error] = "There was an error deleting your item"
    end
  end


  private

  def item_params
    params.require(:item).permit(:name, :time_left)
  end
end