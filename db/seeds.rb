### This file should contain all the record creation needed to seed the database with its default values.
### The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

conferences = Conference.create!([{ name: 'GoRuCo', start_date: DateTime.new(2013,6,8,6), end_date: DateTime.new(2013,6,8,23), slug: 'goruco-2013' },
                                  { name: 'Ruby Conference 2013', start_date: DateTime.new(2013,11,8,6), end_date: DateTime.new(2013,11,10,23), slug: 'ruby-conf-2013' },
                                  { name: 'LoneStar RubyConf 2013', start_date: DateTime.new(2013,7,18,7), end_date: DateTime.new(2013,7,20,23), slug: 'lonestar-ruby-2013' },
                                  { name: 'gSchool Demos', start_date: DateTime.new(2013,7,3,2), end_date: DateTime.new(2011,7,3,4), slug: 'gschool-demo-2013' },
                                  { name: 'Pitches and Pitchers', start_date: DateTime.new(2013,7,2,4), end_date: DateTime.new(2013,7,2,5), slug: 'pitches-and-pitchers-2013' },
                                  { name: 'Code for Communities', start_date: DateTime.new(2013,7,2,18,30), end_date: DateTime.new(2013,7,2,20,30), slug: 'code-for-communities-2013' },
                                  { name: 'Denver Open Coffee Club', start_date: DateTime.new(2013,7,9,7,30), end_date: DateTime.new(2013,7,9,9,30), slug: 'denver-open-coffee-club' },
                                  { name: '1MillionCups', start_date: DateTime.new(2013,7,10,9), end_date: DateTime.new(2013,7,10,10), slug: '1millioncups' },
                                  { name: 'Generic Conference 2011', start_date: DateTime.new(2011,2,3), end_date: DateTime.new(2011,2,5), slug: 'generic-conf-2011' },
                                  ])

tracks = Track.create!([{ conference_id: 1, title: 'Refactoring', description: 'Talks about how to clean up your code', location: 'Banquet Hall' },
                        { conference_id: 1, title: 'Testing', description: 'Talks about how to write efficient tests', location: 'Auditorium' },
                        { conference_id: 1, title: 'APIs', description: 'Presentations about creating APIs', location: 'Conference Room: Oak' },
                        { conference_id: 1, title: 'Code Review', description: 'Ruby veterans available for live code reviews', location: 'Lobby' },

                        { conference_id: 2, title: 'Refactoring', description: 'Talks about how to clean up your code', location: 'Banquet Hall' },
                        { conference_id: 2, title: 'Testing', description: 'Talks about how to write efficient tests', location: 'Auditorium' },
                        { conference_id: 2, title: 'APIs', description: 'Presentations about creating APIs', location: 'Conference Room: Oak' },
                        { conference_id: 2, title: 'Code Review', description: 'Ruby veterans available for live code reviews', location: 'Lobby' },

                        { conference_id: 3, title: 'Refactoring', description: 'Talks about how to clean up your code', location: 'Banquet Hall' },
                        { conference_id: 3, title: 'Testing', description: 'Talks about how to write efficient tests', location: 'Auditorium' },
                        { conference_id: 3, title: 'APIs', description: 'Presentations about creating APIs', location: 'Conference Room: Oak' },
                        { conference_id: 3, title: 'Code Review', description: 'Ruby veterans available for live code reviews', location: 'Lobby' },

                        { conference_id: 4, title: 'Student Demos', description: 'gSchool students show off their last group projects', location: 'Conference Room East' },

                        { conference_id: 5, title: 'Gather Pitches', description: 'Galvanize businesses share their work and ideas with the community', location: 'Gather' },
                        { conference_id: 5, title: "Jim's Office Hours", description: 'Talks about how to clean up your code', location: 'Banquet Hall' },
                        { conference_id: 5, title: 'gSchool Class', description: 'Talks about how to write efficient tests', location: 'Auditorium' },
                        { conference_id: 5, title: 'gSchool Project Work', description: 'Presentations about creating APIs', location: 'Conference Room: Oak' },
                        { conference_id: 5, title: 'Mentoring', description: 'Ruby veterans available for live code reviews', location: 'Lobby' },

                        { conference_id: 6, title: 'Code for Communities', description: 'Hack night for the civic and social good', location: 'Atrium' },

                        { conference_id: 7, title: 'Generic Track', description: 'A nondescript conference', location: 'Lobby' },
                        { conference_id: 7, title: 'Generic Track', description: 'A nondescript conference', location: 'Lobby' },

                        { conference_id: 8, title: 'Generic Track', description: 'A nondescript conference', location: 'Lobby' },

                        { conference_id: 9, title: 'Generic Track', description: 'A nondescript conference', location: 'Lobby' },
                        { conference_id: 9, title: 'Generic Track', description: 'A nondescript conference', location: 'Lobby' }
                        ])
  # need to add conference_id field

sessions = Session.create!([{ track_id: 1, title: 'Refactoring Classes', description: 'Make your classes leaner', speaker: 'Katrina Owen', location: 'Room 413', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 1, title: 'Refactoring Methods', description: 'Make your methods clear', speaker: 'Frank Weber', location: 'Room 413', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 1, title: 'Refactoring Controllers', description: 'Keep your controllers concise', speaker: 'TBD', location: 'Room 413', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 1, title: 'Refactoring Models', description: 'Make your models clear and readable', speaker: 'Aaron Patterson', location: 'Room 413', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 5, title: 'Refactoring Classes', description: 'Make your classes leaner', speaker: 'Katrina Owen', location: 'Room 413', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 5, title: 'Refactoring Methods', description: 'Make your methods clear', speaker: 'Frank Weber', location: 'Room 413', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 5, title: 'Refactoring Controllers', description: 'Keep your controllers concise', speaker: 'TBD', location: 'Room 413', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 5, title: 'Refactoring Models', description: 'Make your models clear and readable', speaker: 'Aaron Patterson', location: 'Room 413', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 9, title: 'Refactoring Classes', description: 'Make your classes leaner', speaker: 'Katrina Owen', location: 'Room 413', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 9, title: 'Refactoring Methods', description: 'Make your methods clear', speaker: 'Frank Weber', location: 'Room 413', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 9, title: 'Refactoring Controllers', description: 'Keep your controllers concise', speaker: 'TBD', location: 'Room 413', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 9, title: 'Refactoring Models', description: 'Make your models clear and readable', speaker: 'Aaron Patterson', location: 'Room 413', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 2, title: 'Testing Basics', description: 'How to start testing', speaker: 'Katrina Owen', location: 'Room 143', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 2, title: 'Testing Tricks', description: 'Some little-known techniques for RSpec', speaker: 'Mike Gehard', location: 'Room 142', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 2, title: 'Testing Everything', description: 'How to test the nooks and crannies', speaker: 'TBD', location: 'Room 139', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 2, title: 'Testing Pitfalls', description: 'What not to test', speaker: 'DHH', location: 'Room 143', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 6, title: 'Testing Basics', description: 'How to start testing', speaker: 'Katrina Owen', location: 'Room 143', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 6, title: 'Testing Tricks', description: 'Some little-known techniques for RSpec', speaker: 'Mike Gehard', location: 'Room 142', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 6, title: 'Testing Everything', description: 'How to test the nooks and crannies', speaker: 'TBD', location: 'Room 139', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 6, title: 'Testing Pitfalls', description: 'What not to test', speaker: 'DHH', location: 'Room 143', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 10, title: 'Testing Basics', description: 'How to start testing', speaker: 'Katrina Owen', location: 'Room 143', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 10, title: 'Testing Tricks', description: 'Some little-known techniques for RSpec', speaker: 'Mike Gehard', location: 'Room 142', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 10, title: 'Testing Everything', description: 'How to test the nooks and crannies', speaker: 'TBD', location: 'Room 139', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 10, title: 'Testing Pitfalls', description: 'What not to test', speaker: 'DHH', location: 'Room 143', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 3, title: 'Starting APIs', description: 'APIs for Dummies', speaker: 'Jeff Casimir', location: 'Room 232', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 3, title: 'APIs for Everyone', description: 'Making APIs that everyone can use', speaker: 'Mike Gehard', location: 'Room 223', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 3, title: 'APIs as Services', description: 'Using APIs to condense your app', speaker: 'TBD', location: 'Room 117', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 3, title: 'Using APIs for Everything', description: 'APIs can do it all', speaker: 'Steve Klabnik', location: 'Room 231', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },

                            { track_id: 7, title: 'Starting APIs', description: 'APIs for Dummies', speaker: 'Jeff Casimir', location: 'Room 232', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 7, title: 'APIs for Everyone', description: 'Making APIs that everyone can use', speaker: 'Mike Gehard', location: 'Room 223', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 7, title: 'APIs as Services', description: 'Using APIs to condense your app', speaker: 'TBD', location: 'Room 117', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 7, title: 'Using APIs for Everything', description: 'APIs can do it all', speaker: 'Steve Klabnik', location: 'Room 231', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },

                            { track_id: 11, title: 'Starting APIs', description: 'APIs for Dummies', speaker: 'Jeff Casimir', location: 'Room 232', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 11, title: 'APIs for Everyone', description: 'Making APIs that everyone can use', speaker: 'Mike Gehard', location: 'Room 223', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 11, title: 'APIs as Services', description: 'Using APIs to condense your app', speaker: 'TBD', location: 'Room 117', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 11, title: 'Using APIs for Everything', description: 'APIs can do it all', speaker: 'Steve Klabnik', location: 'Room 231', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },

                            { track_id: 4, title: 'Studying Code', description: "How to learn from other people's code", speaker: 'Frank Webber', location: 'Auditorium', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 4, title: 'Letting Others Review Your Code', description: 'Finding mentors', speaker: 'Dave Thomas', location: 'Room 223', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 4, title: 'Review Your Own Code', description: 'Looking at your own work', speaker: 'Jeff Casimir', location: 'Room 117', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 4, title: 'Group Code Reviews', description: 'Putting your code out there', speaker: 'Steve Klabnik', location: 'Room 231', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 8, title: 'Studying Code', description: "How to learn from other people's code", speaker: 'Frank Webber', location: 'Auditorium', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 8, title: 'Letting Others Review Your Code', description: 'Finding mentors', speaker: 'Dave Thomas', location: 'Room 223', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 8, title: 'Review Your Own Code', description: 'Looking at your own work', speaker: 'Jeff Casimir', location: 'Room 117', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 8, title: 'Group Code Reviews', description: 'Putting your code out there', speaker: 'Steve Klabnik', location: 'Room 231', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 12, title: 'Studying Code', description: "How to learn from other people's code", speaker: 'Frank Webber', location: 'Auditorium', start_time: DateTime.new(2013,11,8,9), end_time: DateTime.new(2013,11,8,10) },
                            { track_id: 12, title: 'Letting Others Review Your Code', description: 'Finding mentors', speaker: 'Dave Thomas', location: 'Room 223', start_time: DateTime.new(2013,11,8,10), end_time: DateTime.new(2013,11,8,11) },
                            { track_id: 12, title: 'Review Your Own Code', description: 'Looking at your own work', speaker: 'Jeff Casimir', location: 'Room 117', start_time: DateTime.new(2013,11,8,11), end_time: DateTime.new(2013,11,8,12) },
                            { track_id: 12, title: 'Group Code Reviews', description: 'Putting your code out there', speaker: 'Steve Klabnik', location: 'Room 231', start_time: DateTime.new(2013,11,8,14), end_time: DateTime.new(2013,11,8,15) },

                            { track_id: 13, title: 'BackChannel', description: 'Enhancing the conference experience with chat, Q&A, and schedule', speaker: 'Raph, Jen, Kareem, Phil', location: 'Conference Room East', start_time: DateTime.new(2013,11,8,14,15), end_time: DateTime.new(2013,11,8,14,30) },
                            { track_id: 13, title: 'Traveline', description: 'Making group travel more interactive', speaker: 'gSchool students', location: 'Conference Room East', start_time: DateTime.new(2013,11,8,14,30), end_time: DateTime.new(2013,11,8,14,45) },
                            { track_id: 13, title: 'Trivia', description: 'Play against your friends at the bar', speaker: 'gSchool students', location: 'Conference Room East', start_time: DateTime.new(2013,11,8,14,45), end_time: DateTime.new(2013,11,8,15,00) },

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


