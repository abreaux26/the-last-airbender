require 'rails_helper'

RSpec.describe SearchFacade do
  describe 'happy path' do
    it 'called Facade search and gets data' do
      affiliation = 'Fire Nation'

      result = SearchFacade.search(affiliation)
      expect(result).to be_an(Array)
    end
  end
end
