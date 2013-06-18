class Track < ActiveRecord::Base
  attr_accessible :conferences_id, :description, :location, :title

  belongs_to :conference
  has_many :sessions
end
