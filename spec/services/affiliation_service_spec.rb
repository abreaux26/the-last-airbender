require 'rails_helper'

RSpec.describe AffiliationService do
  describe 'happy path' do
    it 'fetches members of affiliation based on a search term and limit' do
      affiliation = 'Fire Nation'
      limit = 25

      data = AffiliationService.search(name, limit)
      expect(data).to be_a(Array)
      expect(data.length).to be <= limit

      first_data = data[0]
      expect(first_data).to have_key(:id)
      expect(first_data).to have_key(:name)
      expect(first_data).to have_key(:allies)
      expect(first_data).to have_key(:enemies)
      expect(first_data).to have_key(:affiliation)
      expect(first_data[:affiliation]).to include(affiliation)
    end

    it 'tests the strcuture of our API data' do
      affiliation = 'Fire Nation'

      data = AffiliationService.get_affiliate_members(affiliation)

      expect(data).to be_an(Array)
      expect(data[0]).to be_a(Hash)
      expect(data[0]).to have_key(:allies)
      expect(data[0][:allies]).to be_an(Array)
      expect(data[0]).to have_key(:enemies)
      expect(data[0][:enemies]).to be_an(Array)
      expect(data[0]).to have_key(:name)
      expect(data[0][:allies]).to be_a(String)
      expect(data[0]).to have_key(:affiliation)
      expect(data[0][:affiliation]).to be_an(String)
    end
  end
end
