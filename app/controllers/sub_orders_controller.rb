class SubOrdersController < ApplicationController
  before_action :set_sub_order, only: [:show, :edit, :update, :destroy]

  # GET /sub_orders
  # GET /sub_orders.json
  def index
    @sub_orders = SubOrder.all
  end

  # GET /sub_orders/1
  # GET /sub_orders/1.json
  def show
  end

  # GET /sub_orders/new
  def new
    @sub_order = SubOrder.new
  end

  # GET /sub_orders/1/edit
  def edit
  end

  # POST /sub_orders
  # POST /sub_orders.json
  def create
    @sub_order = SubOrder.new(sub_order_params)

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

  # PATCH/PUT /sub_orders/1
  # PATCH/PUT /sub_orders/1.json
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

  # DELETE /sub_orders/1
  # DELETE /sub_orders/1.json
  def destroy
    @sub_order.destroy
    respond_to do |format|
      format.html { redirect_to sub_orders_url, notice: 'Sub order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_order
      @sub_order = SubOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_order_params
      params.require(:sub_order).permit(:nickname, :order_id, :comment)
    end
end
