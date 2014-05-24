class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

  # GET /shops
  # GET /shops.json
  def index
    authorize! :read, Shop
    @shops = Shop.all
    if params.has_key? :postcode
      @shops = Shop.by_postcode(params[:postcode])
    end

    respond_to do |format|
      format.html { render action: 'index' }
      format.json { render json: @shops, each_serializer: ShopListSerializer }
    end
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
    authorize! :read, Shop
    respond_to do |format|
      format.html { render action: 'show' }
      format.json { render json: @shop }
    end
  end

  # GET /shops/new
  def new
    authorize! :create, Shop
    @shop = Shop.new
  end

  # GET /shops/1/edit
  def edit
    authorize! :update, @shop
  end

  # POST /shops
  # POST /shops.json
  def create
    authorize! :create, @shop
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop, notice: 'Shop was successfully created.' }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shops/1
  # PATCH/PUT /shops/1.json
  def update
    authorize! :update, @shop
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to @shop, notice: 'Shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:address_id, :user_id)
    end
end
