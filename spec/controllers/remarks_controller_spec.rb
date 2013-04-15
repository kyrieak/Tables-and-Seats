require 'spec_helper'

describe RemarksController do
  let!(:retro) { create :retro }
  let!(:remark) { create :remark, :retro_id => retro.id }
end
