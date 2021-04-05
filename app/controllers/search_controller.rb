class SearchController < ApplicationController
  def index
    @fire_nation_characters = SearchFacade.get_affiliate_members("Fire Nation")
    @limit_characters = SearchFacade.search("Fire Nation", 25)
  end
end
