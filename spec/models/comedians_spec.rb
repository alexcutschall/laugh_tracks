RSpec.describe Comedian do
  describe "Validate fields" do
    it "should have a name" do
      comedian = Comedian.new(age: 25)
      expect(comedian).to_not be_valid
    end
    it "should have an age" do
      comedian = Comedian.new(name: "Alex")

      expect(comedian).to_not be_valid
    end

  end
end
