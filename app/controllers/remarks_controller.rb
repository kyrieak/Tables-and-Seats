class RemarksController < ApplicationController
  respond_to :html

  def index
    @remarks = Remark.all
  end

  def new
    @remark = Remark.new
  end

  def create
    @remark = Remark.new(params[:remark])
    if @remark.save
      flash[:notice] = 'Remark was successfully created'
      respond_with @remark, location: remarks_path
    else
      respond_with @remark, :location => nil
    end
  end

  def edit
    @remark = Remark.find_by_id(params[:id])
  end

  def update
    @remark = Remark.find_by_id(params[:id])
    if @remark.update_attributes(params[:remark])
      flash[:notice] = 'Remark was successfully updated'
      respond_with @remark, location: remarks_path
    else
      respond_with @remark, :location => nil
    end
  end

  def destroy
    @remark = Remark.find(params[:id])
    if @remark.destroy
      flash[:notice] = 'Remark was successfully deleted'
      respond_with @remark, location: remarks_path
    end
  end

  def show
    @remark = Remark.find(params[:id])
    respond_with @remark
  end
end
