class Session < ActiveRecord::Base
  attr_accessible :track_id, :date, :description, :end_time, :location, :speaker, :start_time, :title

  belongs_to :track
  validates_presence_of :track_id, :title, :description, :location, :speaker #, :start_time, :end_time
end
