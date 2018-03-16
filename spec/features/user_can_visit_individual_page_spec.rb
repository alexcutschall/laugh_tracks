RSpec.describe Comedian do
  describe "user goes to specific comedian page" do
    context "user can find comedians by age" do
      it "should show all comedians by that age" do
        visit "/comedians?age=34"

        expect(page).to have_content("Iliza Shlesinger")
      end 
    end
  end
end
