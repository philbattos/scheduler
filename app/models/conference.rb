class Conference < ActiveRecord::Base
  attr_accessible  :name, :slug, :start_date, :end_date

  has_many :tracks
  validates_presence_of :name, :slug, :start_date, :end_date

  def serializable_hash(options = {})
    super.merge(tracks: tracks.all)
  end
end
