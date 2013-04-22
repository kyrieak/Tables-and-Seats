# Retros controller manages retros
class RetrosController < ApplicationController
  respond_to :json
  # GET /retros
  # GET /retros.json
  def index
    @retros = Retro.all
    respond_with @retros
  end

  # GET /retros/1
  # GET /retros/1.json
  def show
    @retro = Retro.find(params[:id])
    respond_with @retro
  end

  # GET /retros/new
  # GET /retros/new.json
  def new
    @retro = Retro.new
    respond_with @retro
  end

  # GET /retros/1/edit
  def edit
    @retro = Retro.find(params[:id])
    respond_with @retro
  end

  # POST /retros
  # POST /retros.json
  def create
    @retro = Retro.new(params[:retro])

    if @retro.save
      respond_with @retro, {
        status: :created,
        location: @retro }
    else
      respond_with @retro, {
        status: :unprocessable_entity }
    end
  end

  # PUT /retros/1
  # PUT /retros/1.json
  def update
    @retro = Retro.find(params[:id])

    if @retro.update_attributes(params[:retro])
      redirect_to retro_path(@retro)
    else
      respond_with @retro, {
        status: :unprocessable_entity }
    end
  end

  # DELETE /retros/1
  # DELETE /retros/1.json
  def destroy
    @retro = Retro.find_by_id(params[:id])
    if @retro
      @retro.destroy
      notice = "Successfully destroyed retro."
      render :json => {notice: notice}
    else
      render :json => {:error => "Retro Not found"},
        :status => :not_found
    end
  end
end
