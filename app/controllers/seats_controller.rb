# Seats controller manages seats
class SeatsController < ApplicationController
  respond_to :json
  # GET /seats
  # GET /seats.json
  def index
    @seats = Seat.all
    respond_with @seats
  end

  # GET /seats/1
  # GET /seats/1.json
  def show
    @seat = Seat.find(params[:id])
    respond_with @seat
  end

  # GET /seats/new
  # GET /seats/new.json
  def new
    @seat = Seat.new
    respond_with @seat
  end

  # GET /seats/1/edit
  def edit
    @seat = Seat.find(params[:id])
    respond_with @seat
  end

  # POST /seats
  # POST /seats.json
  def create
    @seat = Seat.new(params[:retro])

    if @seat.save
      respond_with @seat, {
        status: :created,
        location: @seat }
    else
      respond_with @seat, {
        status: :unprocessable_entity }
    end
  end

  # PUT /seats/1
  # PUT /seats/1.json
  def update
    @seat = Seat.find(params[:id])

    if @seat.update_attributes(params[:retro])
      redirect_to retro_path(@seat)
    else
      respond_with @seat, {
        status: :unprocessable_entity }
    end
  end

  # DELETE /seats/1
  # DELETE /seats/1.json
  def destroy
    @seat = Seat.find_by_id(params[:id])
    if @seat
      @seat.destroy
      notice = "Successfully destroyed retro."
      render :json => {notice: notice}
    else
      render :json => {:error => "Seat Not found"},
        :status => :not_found
    end
  end
end
