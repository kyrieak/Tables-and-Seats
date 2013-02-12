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
end
