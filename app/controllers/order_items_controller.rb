class OrderItemsController < ApplicationController

  # GET /order_items
  # GET /order_items.json
  def index
    @order_items = OrderItem.all
  end

  # DELETE /order_items/1
  # DELETE /order_items/1.json
  def destroy
    @order = current_client.orders.where.not(state: :disabled)
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Order item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def order_item_params
      params.require(:order_item).permit(:price, :quantity, :product_id, :order_id)
    end
end
