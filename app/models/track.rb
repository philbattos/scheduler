class Track < ActiveRecord::Base
  attr_accessible :conference_id, :description, :location, :title

  belongs_to :conference
  has_many :sessions

  validates_presence_of :title, :conference_id, :description, :location

  def serializable_hash(options = {})
    super.merge(sessions: sessions.all)
  end
end
