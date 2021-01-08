require 'rails_helper'

describe "As a user" do
  describe "In the root path after filling in Emily in the text field and click on Get Poems" do
    it "I am taken to /search" do
      visit root_path

      fill_in :author, with: "Emily"
      click_button "Get Poems"

      expect(current_path).to eq(search_path)
    end

    it "I should see the poems with aithor title and tones" do
      poems = SearchFacade.get_poems_by_author("Emily")

      visit root_path
      fill_in :author, with: "Emily"
      click_button "Get Poems"

      expect(page).to have_content("Poems matching search")

      expect(page).to have_content(poems.first.title)
      expect(page).to have_content(poems.last.title)
    end
  end
end
