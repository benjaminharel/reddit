class SearchResult < ActiveRecord::Base
  attr_accessible :data
  belongs_to :search
end
