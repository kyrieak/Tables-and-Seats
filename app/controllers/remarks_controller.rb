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
        format.html { redirect_to remarks_path, notice: 'Remark was successfully created.' }
      else
        format.html { render 'new', error: "Unable to save remark: #{@remark.errors.full_messages.join(' ')}" }
      end
    end
  end

end
