class RedditSearchService

  def self.search (query)
    args = { :q => query }.to_query
    uri = URI.parse("http://www.reddit.com/search.json?" + args)
    response = Net::HTTP.get_response(uri)
    JSON.parse response.body
  end
end