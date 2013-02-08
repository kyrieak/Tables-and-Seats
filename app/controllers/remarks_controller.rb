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
        format.html { redirect_to remarks_path, notice: 'Remark was successfully created' }
      else
        format.html { render 'new', alert: "Unable to save remark: #{@remark.errors.full_messages.join(' ')}" }
      end
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
