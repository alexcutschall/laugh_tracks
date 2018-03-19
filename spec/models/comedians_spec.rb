describe Comedian do
  describe "Class Methods" do
    describe ".average age" do
      it "should show average age of comedians" do
        comedian_1 = Comedian.create!(name: "Donald Glover", age: 25)
        comedian_2 = Comedian.create!(name: "Sarah Silverman", age: 35)

        expect(Comedian.average_age).to eq(30)
      end
    end
  end
end
