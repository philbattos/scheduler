class Session < ActiveRecord::Base
  attr_accessible :date, :description, :end_time, :location, :speaker, :start_time, :title, :topic_one, :topic_three, :topic_two
end
