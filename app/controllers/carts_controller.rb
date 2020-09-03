class CartsController < ApplicationController

    def update
      product = params[:cart][:product_id]
      quantity = params[:cart][:quantity]

      current_order.add_product(product, quantity)

      redirect_to root_url, notice: "Product added successfuly"
    end

    def show
      @order = current_order
    end

    def destroy

      @order_items = OrderItem.find(params[:id])
      @order_items.destroy


      if current_order.destroy?
          current_order.update_attributes(total: 0)
      end

       respond_to do |format|
        format.html { redirect_to root_path, notice: "Cart was successfuly destroyed" }
        format.json { head :no_content}
      end
    end


  end
