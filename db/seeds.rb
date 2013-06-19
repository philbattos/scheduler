### This file should contain all the record creation needed to seed the database with its default values.
### The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

conferences = Conference.create!([{ name: 'GoRuCo', start_date: DateTime.new(2011,2,3), end_date: DateTime.new(2011,2,5), slug: 'goruco-2011' },
                                  { name: 'Ruby Conference 2011', start_date: DateTime.new(2011,2,3), end_date: DateTime.new(2011,2,5), slug: 'ruby-conf-2011' },
                                  { name: 'LoneStar RubyConf 2013', start_date: DateTime.new(2011,2,3), end_date: DateTime.new(2011,2,5), slug: 'lonestar-ruby-2011' }
                                  ])

tracks = Track.create!([{ conference_id: 1, title: 'Refactoring', description: 'Talks about how to clean up your code', location: 'Banquet Hall' },
                       { conference_id: 1, title: 'Testing', description: 'Talks about how to write efficient tests', location: 'Auditorium' },
                       { conference_id: 2, title: 'APIs', description: 'Presentations about creating APIs', location: 'Conference Room: Oak' },
                       { conference_id: 3, title: 'Code Review', description: 'Ruby veterans available for live code reviews', location: 'Lobby' }
                       ])
  # need to add conference_id field

sessions = Session.create!([{ track_id: 1, title: 'Refactoring Classes', description: 'Make your classes leaner', speaker: 'Katrina Owen', location: 'Room 413' },
                           { track_id: 1, title: 'Refactoring Methods', description: 'Make your methods clear', speaker: 'Frank Weber', location: 'Room 413' },
                           { track_id: 1, title: 'Refactoring Controllers', description: 'Keep your controllers concise', speaker: 'TBD', location: 'Room 413'},
                           { track_id: 2, title: 'Testing Basics', description: 'How to start testing', speaker: 'TBD', location: 'Room 413'},
                           { track_id: 2, title: 'Testing Tricks', description: 'Some little-known techniques for RSpec', speaker: 'TBD', location: 'Room 413'},
                           { track_id: 2, title: 'The Joy of Failing Tests', description: 'What failing tests tell you about your app', speaker: 'TBD', location: 'Room 413'},
                           ])
  # need to add track_id field
  # need to add date, start_time, and end_time data



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


###
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


