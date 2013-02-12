class RetrosController < ApplicationController
  respond_to :html
  def index
    @retros = Retro.all
  end

  def new
    @retro = Retro.new
  end

  def create
    @retro = Retro.new(params[:retro])
    if @retro.save
      flash[:notice] = "Retro was successfully created."
      respond_with(@retro, location: retros_path)
    else
      render :new
    end
  end

  def edit
    @retro = Retro.find(params[:id])
  end

  def update
    @retro = Retro.find(params[:id])
    @retro.update_attributes(params[:retro])
    if @retro.save
      flash[:notice] = "Retro was successfully updated."
      respond_with(@retro, location: retros_path)
    else
      flash[:alert] = "Retro update unsuccessful"
    end
  end
end
