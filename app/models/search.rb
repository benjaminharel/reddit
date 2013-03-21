class Search < ActiveRecord::Base
  attr_accessible :query, :user_id
  belongs_to :user
  has_many :search_results
end
