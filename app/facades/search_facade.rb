class SearchFacade
  def self.search(affiliation, limit)
    AffiliationService.search(affiliation, limit)
  end

  def self.get_affiliate_members(affiliation)
    AffiliationService.get_affiliate_members(affiliation)
  end
end
