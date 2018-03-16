RSpec.describe Comedian do
  describe "user visits the comedians page" do
    context "user wants to see list of comedians special" do
      it "should see list of comedians" do
        visit '/comedians'

        expect(page).to have_content("Hannibal")
      end
      it "should see list of specials" do
        visit "/comedians"

        within_fieldset ('Hannibal Burress') do
        click 'specials'
        expect(page).to have_content("My Name is Hannibal")
        end
      end
    end
  end
end
