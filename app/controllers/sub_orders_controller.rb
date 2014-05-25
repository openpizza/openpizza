class SubOrdersController < ApplicationController
  before_action :set_order
  before_action :set_sub_order, only: [:show, :edit, :update, :destroy]

  # GET /orders/:uuid/items
  # GET /orders/:uuid/items.json
  def index
    @sub_orders = SubOrder.of_order(params[:order_id])
    respond_to do |format|
      format.html { render action: 'show' }
      format.json { render json: @sub_orders }
    end
  end

  # GET /orders/:uuid/items/1
  # GET /orders/:uuid/items/1.json
  def show
    respond_to do |format|
      format.html { render action: 'show' }
      format.json { render json: @sub_order }
    end
  end

  # GET /orders/:uuid/items/new
  def new
    @sub_order = SubOrder.new
    if params[:order_id]
      @sub_order.order = Order.find(params[:order_id])
    end
  end

  # GET /orders/:uuid/items/1/edit
  def edit
  end

  # POST /orders/:uuid/items
  # POST /orders/:uuid/items.json
  def create
    @sub_order = SubOrder.new(sub_order_params)
    @sub_order.order = @order

    respond_to do |format|
      if @sub_order.save
        format.html { redirect_to @sub_order, notice: 'Sub order was successfully created.' }
        format.json { render :show, status: :created, location: @sub_order }
      else
        format.html { render :new }
        format.json { render json: @sub_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_with_nickname
    @sub_order = SubOrder.find_or_create_by(order: @order, nickname: params[:nickname])
    @sub_order.comment = params[:comment]

    respond_to do |format|
      if @sub_order.save
        url = order_item_path(@order.uuid, @sub_order)
        params[:products].each do |product_json|
          product = Product.find_by(id: product_json[:id])

          if product.nil?
            return render :json => {:error => "Product doesn't exist"}.to_json, :status => :unprocessable_entity
          end

          item = @sub_order.items.find_or_create_by(product_id: product.id)
          item.update(price: product.price, quantity: product_json[:quantity])
        end

        logger.debug @sub_order.items.count

        format.html { redirect_to url, notice: 'Sub order was successfully created.' }
        format.json { render json: @sub_order, status: :created, location: url }
      else
        format.html { render :new }
        format.json { render json: @sub_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/:uuid/items/1
  # PATCH/PUT /orders/:uuid/items/1.json
  def update
    respond_to do |format|
      if @sub_order.update(sub_order_params)
        format.html { redirect_to @sub_order, notice: 'Sub order was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_order }
      else
        format.html { render :edit }
        format.json { render json: @sub_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/:uuid/items/1
  # DELETE /orders/:uuid/items/1.json
  def destroy
    @sub_order.destroy
    respond_to do |format|
      format.html { redirect_to sub_orders_url, notice: 'Sub order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      @order = Order.find_by_uuid(params[:order_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_sub_order
      @sub_order = SubOrder.find_by_order_and_nickname(params[:order_id], params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_order_params
      params.require(:sub_order).permit(:nickname, :comment)
    end
end
