class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @share_url = share_url(@order)
    @qr = qrcode(qrcode_url(@order))
    respond_to do |format|
      format.html { render action: 'show' }
      format.json { render json: @order }
    end
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    if user_signed_in?
      @order.user = current_user
    end

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_path(@order.uuid) }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:shop_id)
    end

    def share_url(order)
      root_url[0..-2] + new_order_item_path(order.uuid)
    end

    def qrcode_url(order)
      "openpizza" + root_url[4..-2] + order_path(order.uuid)
    end

    def qrcode(url)
      RQRCode::QRCode.new(url, size: 4, level: :l)
    end
end
