class TakersController < ApplicationController
  def index
    @takers = Taker.all
  end

  def new
    @genders = Gender.all
    @places = Place.all
  end

  def create
    Taker.create(image:params["taker"]["image"],name:params["taker"]["name"],age:params["taker"]["age"],gender_id:params["taker"]["gender_id"],place_id:params["taker"]["place_id"],body:params["taker"]["body"])
    redirect_to "/"
  end

  def show
    @taker = Taker.find(params["id"])
  end

end
