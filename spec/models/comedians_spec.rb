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
  describe ".average_age" do
    it "should get the average age of all comedians" do
      Comedian.average_age
    end
  end
  describe ".special_count" do
    it "should show how many specials the comedian has" do
    end
  end
end
