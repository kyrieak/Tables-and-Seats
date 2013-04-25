# Tables controller manages tables
class TablesController < ApplicationController
  respond_to :json
  # GET /tables
  # GET /tables.json
  def index
    @tables = Table.all

    respond_with @tables
  end

  # GET /tables/1
  # GET /tables/1.json
  def show
    @table = Table.find(params[:id])
    respond_with @table
  end

  # GET /tables/new
  # GET /tables/new.json
  def new
    @table = Table.new
    respond_with @table
  end

  # GET /tables/1/edit
  def edit
    @table = Table.find(params[:id])
    respond_with @table
  end

  # POST /tables
  # POST /tables.json
  def create
    @table = Table.new(params[:retro])

    if @table.save
      respond_with @table, {
        status: :created,
        location: @table }
    else
      respond_with @table, {
        status: :unprocessable_entity }
    end
  end

  # PUT /tables/1
  # PUT /tables/1.json
  def update
    @table = Table.find(params[:id])

    if @table.update_attributes(params[:retro])
      redirect_to retro_path(@table)
    else
      respond_with @table, {
        status: :unprocessable_entity }
    end
  end

  # DELETE /tables/1
  # DELETE /tables/1.json
  def destroy
    @table = Table.find_by_id(params[:id])
    if @table
      @table.destroy
      notice = "Successfully destroyed retro."
      render :json => {notice: notice}
    else
      render :json => {:error => "Table Not found"},
        :status => :not_found
    end
  end
end
