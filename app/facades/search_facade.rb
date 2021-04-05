class SearchFacade
  def self.search(affiliation, limit)
    members = get_affiliate_members(affiliation)

    found_members = members.find_all { |m| m[:affiliation].include? affiliation }
    found_members.first(limit)
  end

  def self.get_affiliate_members(affiliation)
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/")
    response = conn.get("/api/v1/characters?affiliation=#{affiliation}&perPage=100")

    JSON.parse(response.body, symbolize_names: true)
  end
end
