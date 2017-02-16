require './spec/spec_helper'
RSpec.describe Array do
  let(:things) { [true, true, true, false, false, true, false, true] }
  subject { things.uniqc }

  context "when things are boolean" do
    let(:things) { [true, true, true, false, false, true, false, true] }
    it { is_expected.to eq([[true, 5], [false, 3]]) }
  end

  context "when things are integers" do
    let(:things) { [5,3,3,4,5,1,3,4,4,2,3,9] }
    it { is_expected.to eq([[5, 2], [3, 4], [4, 3], [1, 1], [2, 1], [9, 1]]) }
  end

end
