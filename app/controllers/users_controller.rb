class UsersController < ApplicationController
  require "net/http"
  require "uri"
  require 'reddit_search_service'

  def new
    @query = params[:query]
    @user = params[:username] ? User.find_or_create_by_username(params[:username]) : User.new
    if @query
      search = @user.searches.create!(:query => @query)
      data = RedditSearchService.search( @query )
      @links = []
      data["data"]["children"].each do |article|
        @links << { :title => article["data"]["title"], :url => article["data"]["url"] }
        search.search_results.create! :data => article["data"]["title"]
      end
    end
  end

  def show
    @user = User.find_by_username(params[:username])
  end

end
