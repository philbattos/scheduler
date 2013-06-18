class Track < ActiveRecord::Base
  attr_accessible :conference_id, :description, :location, :title

  belongs_to :conference
  has_many :sessions

  def serializable_hash(options = {})
    super.tap do |data|
      data[:sessions] = sessions.all
    end
  end
end
