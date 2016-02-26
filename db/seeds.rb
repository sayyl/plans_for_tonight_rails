# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Faker::Config.locale = :'en-CA'

# 99.times do |n|
#   name  = Faker::Name.first_name
#   email = Faker::Internet.free_email
#   password = "pass1234"
#   Consumer.create!(
#     name: name,
#     email: email,
#     password: password,
#     password_confirmation: password
#   )
# end

150.times do |n|
  corporate_id = 1
  category_id = Category.all.sample.id
  name = Faker::App.name
  location = Faker::Address.city
  description = Faker::Lorem.sentences
  show_date = Faker::Date.between(185.days.ago, Date.today)
  start_time = Faker::Time.between(185.days.ago, Time.now, :all)
  duration = Faker::Number.between(60, 240)
  image = Faker::Placeholdit.image
  ticket_available = Faker::Number.between(50, 200)
  Event.create!(
    corporate_id: corporate_id,
    category_id: category_id,
    name: name,
    location: location,
    description: description,
    show_date: show_date,
    start_time: start_time,
    duration: duration,
    image: image,
    ticket_available: ticket_available
  )
end



