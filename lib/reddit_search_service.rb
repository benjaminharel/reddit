class RedditSearchService
  def self.search (query)
    uri = URI.parse("http://www.reddit.com/search.json?q=" + query)
    response = Net::HTTP.get_response(uri)
    JSON.parse response.body
  end
end