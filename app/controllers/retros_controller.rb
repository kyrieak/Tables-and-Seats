class RetrosController < ApplicationController
  respond_to :html
  def index
    @retros = Retro.all.sort{ |r_1, r_2| r_1.date <=> r_2.date }
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

  def show
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

  def destroy
    @retro = Retro.find(params[:id])
    if @retro.destroy
      flash[:notice] = 'Retro was successfully deleted'
      respond_with @retro, location: retros_path
    end
  end
end
