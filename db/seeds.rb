# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Status.count == 0
  puts "Creating Statuses..."
  statuses = [
    [ "New" ],
    [ "Assigned" ],
    [ "On Hold" ],
    [ "Cancelled" ],
    [ "Completed" ]
  ]

  statuses.each do |status|
    Status.create( :name => status[0])
  end
  puts "#{Status.count} Statuses created!"
end