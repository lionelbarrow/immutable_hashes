require "spec_helper"

describe MutableHash do
  describe "key assignment" do
    it "allows keys to be assigned once" do
      hash = MutableHash.new
      hash[:my_key] = "my_value"
      hash[:my_key].should == "my_value"
    end

    it "allows keys to be assigned more than once" do
      hash = MutableHash.new
      hash[:my_key] = "my_value"
      hash[:my_key] = "my_other_value"

      hash[:my_key].should == "my_other_value"
    end
  end
end
