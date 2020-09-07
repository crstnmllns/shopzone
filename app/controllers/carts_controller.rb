class CartsController < ApplicationController

  def update
    product_id = params[:cart][:product_id]
    quantity = params[:cart][:quantity]

    current_order.add_product(product_id, quantity)

    redirect_to root_url, notice: "Product added successfuly"
  end

  def show
    @order = current_order
  end

  def pay_order; end

  def destroy

    if current_order.disabled!
      Order.create(state: :created, client: current_client)
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Cart was successfuly destroyed" }
        format.json { head :no_content}
      end
    end
  end

  protected

  def current_order
    if client_signed_in?
    order = Order.where(client_id: current_client.id).where(state: "created").last
    if order.nil?
      order = Order.create(client: current_client, state: "created")
    end
    return order
  end
  nil

    #return nil unless client_signed_in?
    #Order.where(client: current_client).where(state: "created").last
  end
end
