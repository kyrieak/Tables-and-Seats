# Retros controller manages retros
class RetrosController < ApplicationController
  # GET /retros
  # GET /retros.json
  def index
    @retros = Retro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @retros }
    end
  end

  # GET /retros/1
  # GET /retros/1.json
  def show
    @retro = Retro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @retro }
    end
  end

  # GET /retros/new
  # GET /retros/new.json
  def new
    @retro = Retro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @retro }
    end
  end

  # GET /retros/1/edit
  def edit
    @retro = Retro.find(params[:id])
  end

  # POST /retros
  # POST /retros.json
  def create
    @retro = Retro.new(params[:retro])

    respond_to do |format|
      if @retro.save
        format.html { redirect_to @retro,
                      notice: 'Retro was successfully created.' }
        format.json { render json: @retro,
                      status: :created,
                      location: @retro }
      else
        format.html { render action: "new" }
        format.json { render json: @retro.errors,
                      status: :unprocessable_entity }
      end
    end
  end

  # PUT /retros/1
  # PUT /retros/1.json
  def update
    @retro = Retro.find(params[:id])

    respond_to do |format|
      if @retro.update_attributes(params[:retro])
        format.html { redirect_to @retro,
                      notice: 'Retro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @retro.errors,
                      status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retros/1
  # DELETE /retros/1.json
  def destroy
    @retro = Retro.find(params[:id])
    @retro.destroy

    respond_to do |format|
      format.html { redirect_to retros_url }
      format.json { head :no_content }
    end
  end
end
