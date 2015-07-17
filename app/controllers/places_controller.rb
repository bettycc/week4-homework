class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
  end

  def submitted
    Place.create title: params[:title],
                 price: (params[:price].to_f * 100).to_i,
                 photo_url: params[:url],
                 desc: params[:desc]

    redirect_to root_path
  end

  def create
    @place = Place.new
    @place.title = params["title"]
    @place.price = params["price"]
    @place.photo_url = params["url"]
    @place.desc = params["desc"]
    @place.save
    redirect_to root_url
  end

  def edit
    @place = Place.find(params[:id])
  end

  #def update
  #  @place = Place.find(params[:id])
  #  @place.update title: params[:title],
  #               price: (params[:price].to_f * 100).to_i,
  #               photo_url: params[:url],
  #               desc: params[:desc]

  #  redirect_to "/places/#{@place.id}"
  #end

  def update
    @place = Place.find_by(:id => params["id"])
    @place.title = params[:title]
    @place.price = params[:price]
    @place.photo_url = params[:url]
    @place.desc = params[:desc]
    @place.save
    redirect_to "/places/#{@place.id}"
  end

  #def delete
  #  Place.delete(params[:id])
  #  redirect_to root_path
  #end

  def destroy
    @place = Place.find_by(:id => params["id"])
    @place.delete
    redirect_to "/places"
  end

end
