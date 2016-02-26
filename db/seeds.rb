# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Faker::Config.locale = :'en-CA'

99.times do |n|
  name  = Faker::Name.first_name
  email = Faker::Internet.free_email
  password = "pass1234"
  Consumer.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password
               )
end

