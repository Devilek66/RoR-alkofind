class ShopsController < ApplicationController
  def index
    @tmp = {
          "url": "http://www.fancyicons.com/free-icons/232/cinema/png/32/penis_32.png",
          "width":  32,
          "height": 32
        }
    @shops = Shop.all
    @hash = Gmaps4rails.build_markers(@shops) do |shop,marker|
      marker.lat shop.lat
      marker.lng shop.lng
      marker.infowindow shop.name
      marker.picture @tmp
    end
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user ||= current_user

    @shop.save
    redirect_to @shop
  end

  def edit
  end
  private
  def shop_params
    params.require(:shop).permit(:name, :lat, :lng)
  end
end
