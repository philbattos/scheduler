class Conference < ActiveRecord::Base
  attr_accessible  :name, :start_date, :end_date
end
