### This file should contain all the record creation needed to seed the database with its default values.
### The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

conferences = Conference.create([{ name: 'GoRuCo' }, { name: 'RubyNation 2013' }, { name: 'LoneStar RubyConf 2013' }])
  # need to add start_date and end_date

tracks = Track.create([{ title: 'Refactoring', description: 'Talks about how to clean up your code', location: 'Banquet Hall' },
                       { title: 'Testing', description: 'Talks about how to write efficient tests', location: 'Auditorium' },
                       { title: 'APIs', description: 'Presentations about creating APIs', location: 'Conference Room: Oak' },
                       { title: 'Code Review', description: 'Ruby veterans available for live code reviews', location: 'Lobby' }
                       ])
  # need to add conference_id field

sessions = Session.create([{ title: 'Refactoring Classes', description: 'Make your classes leaner', topic_one: 'Ruby', topic_two: 'refactoring', topic_three: 'DRY', speaker: 'Katrina Owen', location: 'Room 413' },
                           { title: 'Refactoring Methods', description: 'Make your methods clear', topic_one: 'Ruby', topic_two: 'refactoring', topic_three: 'DRY', speaker: 'Frank Weber', location: 'Room 413' },
                           { title: 'Refactoring Controllers', description: 'Keep your controllers concise', topic_one: 'Rails', topic_two: 'refactoring', speaker: 'TBD', location: 'Room 413'},
                           { title: 'Testing Basics', description: 'How to start testing', topic_one: 'Rails', topic_two: 'Mini-test', speaker: 'TBD', location: 'Room 413'},
                           { title: 'Testing Tricks', description: 'Some little-known techniques for RSpec', topic_one: 'Rails', topic_two: 'refactoring', speaker: 'TBD', location: 'Room 413'},
                           { title: 'The Joy of Failing Tests', description: 'What failing tests tell you about your app', topic_one: 'Rails', topic_two: 'refactoring', speaker: 'TBD', location: 'Room 413'},
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


