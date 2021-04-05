require 'rails_helper'

RSpec.describe SearchFacade do
  describe 'happy path' do
    it 'called Facade search and gets data' do
      affiliation = 'Fire Nation'

      result = SearchFacade.search(affiliation, 25)
      expect(result).to be_an(Array)
      expect(result.size).to eq(25)
    end
  end
end
