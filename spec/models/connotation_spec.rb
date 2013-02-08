require "spec_helper"
describe Connotation do
  let(:c) { Connotation.all }

  it "has a positive connotation" do
    c.any?{|elem| elem.name == "Positive" }.should be_true
  end

  it "has a neutral connotation" do
    c.any?{|elem| elem.name == "Neutral" }.should be_true
  end

  it "has a negative connotation" do
    c.any?{|elem| elem.name == "Negative" }.should be_true
  end

end
