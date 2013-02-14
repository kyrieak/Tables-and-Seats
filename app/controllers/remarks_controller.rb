class RemarksController < ApplicationController
  respond_to :html

  def index
    @remarks = Remark.all
  end

  def new
    @retro = Retro.find_by_id(params[:retro_id])
    @remark = @retro.remarks.build
  end

  def create
    @remark = Remark.new(params[:remark])
    if @remark.save && @remark.retro_id
      flash[:notice] = 'Remark was successfully created'
      redirect_to retro_path(@remark.retro_id)
    else
      render :new, :retro_id => params[:retro_id]
    end
  end

  def edit
    @remark = Remark.find_by_id(params[:id])
  end

  def update
    @remark = Remark.find_by_id(params[:id])
    if @remark.update_attributes(params[:remark])
      flash[:notice] = 'Remark was successfully updated'
      redirect_to retro_path(@remark.retro_id)
    else
      respond_with @remark, :location => nil
    end
  end

  def destroy
    @remark = Remark.find(params[:id])
    if @remark.destroy
      flash[:notice] = 'Remark was successfully deleted'
      redirect_to :back
    end
  end

  def show
    @remark = Remark.find(params[:id])
    respond_with @remark
  end
end
