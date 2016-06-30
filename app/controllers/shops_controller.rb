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
  end

  def new
  end

  def edit
  end
end
