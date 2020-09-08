class OrderItemsController < ApplicationController

  def index
    @order_items = OrderItem.all
  end

  def show

  end


  def destroy
    @order = current_client.orders.where.not(state: :disabled)
    @order_item = Order.order_items.find(params[:id])
    @order_item.destroy
    respond_to do |format|
      format.html {redirect_to cart_path(@order), notice: 'Item successfuly removed'}
      format.json { head :no_content}
    end
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :unit_price, :product_id, :order_id)
  end
end
