# Remarks are individual comments in the remark
class RemarksController < ApplicationController
  respond_to :json
  # GET /remarks
  # GET /remarks.json
  def index
    @remarks = Remark.all
    respond_with @remarks
  end

  # GET /remarks/1
  # GET /remarks/1.json
  def show
    @remark = Remark.find(params[:id])
    respond_with @remark
  end

  # GET /remarks/new
  # GET /remarks/new.json
  def new
    @remark = Remark.new
    respond_with @remark
  end

  # GET /remarks/1/edit
  def edit
    @remark = Remark.find(params[:id])
    respond_with @remark
  end

  # POST /remarks
  # POST /remarks.json
  def create
    @remark = Remark.new(params[:remark])
    if @remark.save
      respond_with @remark, { status: :created,
                              location: @remark }
    else
      render :json => { error: "Unable to create remark" }, :status => 422
    end
  end

  # PUT /remarks/1
  # PUT /remarks/1.json
  def update
    @remark = Remark.find(params[:id])

    if @remark.update_attributes(params[:remark])
      respond_with @remark
    else
      render :json => { error: "Unable to update remark" }, :status => 422
    end
  end

  # DELETE /remarks/1
  # DELETE /remarks/1.json
  def destroy
    @remark = Remark.find(params[:id])
    @remark.destroy
    respond_with @remark, { head: :no_content }
  end
end
