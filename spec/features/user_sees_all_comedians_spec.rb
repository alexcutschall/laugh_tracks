describe "user visits comedian index" do
  context "they see the comedian info" do
    it "should show comedians name and ages" do
      comedian_1 = Comedian.create!(name: "Donald Glover", age: 26)
      comedian_2 = Comedian.create!(name: "Sarah Silverman", age: 32)

      visit '/comedians'

      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content(comedian_2.age)
    end
    it "should show comedians special" do
      comedian_1 = Comedian.create!(name: "Donald Glover", age: 26)
      special_1 = comedian_1.specials.create!(name: "Great")
      special_2 = comedian_1.specials.create!(name: "Not super great")
      comedian_2 = Comedian.create!(name: "Sarah Silverman", age: 32)
      special_3 = comedian_2.specials.create!(name: "Great for them")
      special_4 = comedian_2.specials.create!(name: "Not Great for them")

      visit '/comedians'

      expect(page).to have_content(special_1.name)
      expect(page).to have_content(special_2.name)
      expect(page).to have_content(special_3.name)
      expect(page).to have_content(special_4.name)
    end
  end
  it "lists their average age" do
  comedian_1 = Comedian.create!(name: "Donald Glover", age: 25)
  comedian_2 = Comedian.create!(name: "Sarah Silverman", age: 35)

  visit '/comedians'

  expect(page).to have_content("Average Age: 30")
  end
  it "scopes at a specific age" do
    comedian_1 = Comedian.create!(name: "Name1", age: 34)
    comedian_2 = Comedian.create!(name: "Name2", age: 25)

    visit '/comedians?age=34'

    expect(page).to have_content(comedian_1.name)
    expect(page).to_not have_content(comedian_2.name)
  end
end
