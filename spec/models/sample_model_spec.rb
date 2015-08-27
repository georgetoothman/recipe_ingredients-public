require 'spec_helper'

describe SampleModel do
  let(:sample_instance) {SampleModel.new}
  describe '#test_method' do  
    it "returns a string" do
      expect(sample_instance.test_method).to eq("It works!")
    end
  end
end