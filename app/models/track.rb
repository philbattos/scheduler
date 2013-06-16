class Track < ActiveRecord::Base
  attr_accessible :description, :location, :title

  belongs_to :conference
  has_many :sessions
end
