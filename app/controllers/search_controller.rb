class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")
    response = conn.get("/api/v1/characters?affiliation=Fire+Nation&perPage=100")

    @fire_nation_characters = JSON.parse(response.body, symbolize_names: true)
    @limit_characters = @fire_nation_characters.first(25)
  end
end
