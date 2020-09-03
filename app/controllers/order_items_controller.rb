class OrderItemsController < ApplicationController



  def index
    @order_items = OrderItem.all
  end

  def show

  end


  def destroy
    @order_item = OrderItem.find(params[:id])
    @order = Order.find(current_order.id)
    @order_item.destroy

    respond_to do |format|
      format.html {redirect_to cart_path(@order), notice: 'Item successfuly removed'}
      format.json { head :no_content}
    end
  end
end
