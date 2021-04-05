require 'rails_helper'

RSpec.describe Character do
  describe 'happy path' do
    it 'should build a Character PORO based on input' do
      character_data = {
                          "_id": "5cf5679a915ecad153ab68fd",
                          "allies": [
                          "Ozai"
                          ],
                          "enemies": [
                          "Earth Kingdom"
                          ],
                          "name": "Chan (Fire Nation admiral)",
                          "affiliation": "Fire Nation Navy"
                        }
      character = Character.new(character_data)

      expect(character).to be_a(Character)
      expect(character.id).to eq character_data[:_id]
      expect(character.allies).to eq character_data[:allies]
      expect(character.enemies).to eq character_data[:enemies]
      expect(character.name).to eq character_data[:name]
      expect(character.affiliation).to eq character_data[:affiliation]
    end
  end
end
