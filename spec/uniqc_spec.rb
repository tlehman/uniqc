require "spec_helper"

describe Uniqc do
  it "has a version number" do
    expect(Uniqc::VERSION).not_to be nil
  end

  it "does something useful" do
    expect([1,1,1,2].uniqc).to eq([[1,3],[2,1]])
  end
end
