require "spec_helper"

describe Hash do
  describe "key assignment" do
    it "allows keys to be assigned once" do
      hash = {}
      hash[:my_key] = "my_value"
      hash[:my_key].should == "my_value"
    end

    it "does not allow keys to be overwritten" do
      hash = {}
      hash[:my_key] = "my_value"

      expect do
        hash[:my_key] = "my_other_value"
      end.to raise_error(ImmutableHashError)

      hash[:my_key].should == "my_value"
    end
  end
end
