# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_files = [
    Dir.glob(File.join(File.dirname(__FILE__), "seeds/common/*.rb")),
    Dir.glob(File.join(File.dirname(__FILE__), "seeds/#{Rails.env}/*.rb"))
]

seed_files.flatten.each do |seed_file|
  p "loading #{seed_file}"
  load seed_file
end
