class TakersController < ApplicationController
    before_action :authenticate_user!, only: %i[show new]
  def index
    if params[:search] == nil
      @takers = Taker.all
    elsif params[:search] == ""
      @takers = Taker.all
    else
      #部分検索
      @takers = Taker.where("name LIKE ? ",'%' + params[:search] + '%')
    end
  end

  def new
    @genders = Gender.all
    @places = Place.all
  end

  def create
    Taker.create(image:params["taker"]["image"],name:params["taker"]["name"],age:params["taker"]["age"],gender_id:params["taker"]["gender_id"],place_id:params["taker"]["place_id"],body:params["taker"]["body"],user_id:current_user.id)
    redirect_to "/"
  end

  def show
    @taker = Taker.find(params["id"])
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @taker.user_id)
    if @taker.user_id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def edit
    @genders = Gender.all
    @places = Place.all
    @taker = Taker.find(params["id"])
  end

  def update
    taker = Taker.find(params["id"])
    taker.image = params["taker"]["image"]
    taker.name = params["taker"]["name"]
    taker.age = params["taker"]["age"]
    taker.gender_id = params["taker"]["gender_id"]
    taker.place_id = params["taker"]["place_id"]
    taker.body = params["taker"]["body"]
    taker.save
    redirect_to ""
  end

  def destroy
    taker = Taker.find(params["id"])
    taker.destroy
    redirect_to "/"
  end

  def message
    @entries = Entry.all
  end

end
