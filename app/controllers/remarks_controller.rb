class RemarksController < ApplicationController
  def new
    @remark = Remark.new
  end
end
