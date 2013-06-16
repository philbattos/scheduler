class ApplicationController < ActionController::API
end

### Structure of Controllers and Models
# conference_controller
#   index => {:conferences => {:name => "RubyConf",
#                             :start_date => "April",
#                             :end_date => "May"}
#                             }
# tracks_controller
#   index => {:tracks => {:title => "Refactoring",
#                         :description => "Talks about how to clean up your code",
#                         :location => "Banquet Hall"}
#                         }
# sessions_controller
#   index => {:sessions => {:title => "Refactoring Classes",
#                           :description => "Make your classes leaner",
#                           :topics => "Ruby, refactoring, classes, DRY"
#                           :speaker => "Katrina Owen",
#                           :location => "Room 413",
#                           :date => "April 30",
#                           :start_time => "10:00am",
#                           :end_time => "11:00am",
#                           :seating_capacity => "77"}}