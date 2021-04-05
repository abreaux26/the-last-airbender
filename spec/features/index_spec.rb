require 'rails_helper'
RSpec.describe 'As a user' do
  describe 'When I visit "/"' do
    it 'I Select "Fire Nation" from the select field and click "Search For Members"' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'
      expect(current_path).to eq search_path
    end

    it 'I should see the total number of people who live in the Fire Nation. (should be close to 100)' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'

      expect(page).to have_content("Total Number: ")
    end

    it 'I should see a list with the detailed information for the first 25 members of the Fire Nation.' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'

      expect(page).to have_css(".members", count: 25)
    end

    it 'I should see name of the member (and their photo, if they have one)' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'

      within(first(".members")) do
        expect(page).to have_content("Name: ")
      end
    end

    it 'I should see list of allies or "None"' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'

      within(first(".members")) do
        expect(page).to have_content("Allies: ")
        expect(page).to have_css(".allies")
      end
    end

    it 'I should see list of enemies or "None"' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'

      within(first(".members")) do
        expect(page).to have_content("Enemies: ")
        expect(page).to have_css(".enemies")
      end
    end

    it 'I should see any affiliations that the member has' do
      visit root_path

      select "Fire Nation", from: :nation
      click_button 'Search For Members'

      within(first(".members")) do
        expect(page).to have_content("Affiliations: ")
        expect(page).to have_css(".affiliations")
      end
    end
  end
end
