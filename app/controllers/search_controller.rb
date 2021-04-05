class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")
    response = conn.get("/api/v1/characters?affiliation=Fire+Nation")

    @fire_nation_characters = JSON.parse(response.body, symbolize_names: true)
  end
end
