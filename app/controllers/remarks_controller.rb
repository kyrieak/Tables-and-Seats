class RemarksController < ApplicationController

  def index
    @remarks = Remark.all
  end

  def new
    @remark = Remark.new
  end

  def create
    @remark = Remark.new(params[:remark])

    respond_to do |format|
      if @remark.save
        format.html do
          redirect_to remarks_path, notice: 'Remark was successfully created'
        end
      else
        format.html do
          render 'new'
        end
      end
    end
  end

  def edit
    @remark = Remark.find_by_id(params[:id])
  end

  def update

    @remark = Remark.find_by_id(params[:id])
    if @remark.update_attributes(params[:remark])
      redirect_to remarks_path, notice: 'Remark was successfully updated'
    else
      render 'edit'
    end
  end

  def destroy
    @remark = Remark.find_by_id(params[:id])
    if @remark
      if @remark.destroy
        respond_to do |format|
          format.html do
            redirect_to remarks_path, notice: 'Remark was successfully deleted'
          end
        end
      end
    else
      respond_to do |format|
        format.html do
          redirect_to remarks_path, alert: "Remark not found"
        end
      end
    end
  end
end
