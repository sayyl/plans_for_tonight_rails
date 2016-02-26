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

# 150.times do |n|
#   corporate_id = 1
#   category_id = Faker::Number.between(2, 4)
#   name = Faker::App.name
#   location = Faker::Address.city
#   description = Faker::Lorem.sentences.join(" ")
#   show_date = Faker::Date.between(185.days.ago, Date.today)
#   start_time = Faker::Time.between(185.days.ago, Time.now, :all)
#   duration = Faker::Number.between(60, 240)
#   # remote_image_url = Faker::Placeholdit.image
#   ticket_available = Faker::Number.between(50, 200)
#   Event.create!(
#     corporate_id: corporate_id,
#     category_id: category_id,
#     name: name,
#     location: location,
#     description: description,
#     show_date: show_date,
#     start_time: start_time,
#     duration: duration,
#     # remote_image_url: remote_image_url,
#     ticket_available: ticket_available
#   )
# end

# 500.times do |n|
#   consumer_id = Consumer.all.sample.id
#   total = Faker::Number.decimal(2)
#   successful = Faker::Boolean.boolean(0.95)
#   Transaction.create!(
#     consumer_id: consumer_id,
#     total: total,
#     successful: successful
#   )
# end

500.times do |n|
  type_array = ["General", "Adult", "Child"]
  event_id = Event.all.sample.id
  transaction_id = Transaction.all.sample.id
  price = Faker::Number.between(20, 150)
  type = type_array.sample
  confirmation_num = Faker::Number.number(8)
  Ticket.create!(
    event_id: event_id,
    transaction_id: transaction_id,
    price: price,
    type: type,
    confirmation_num: confirmation_num
  )
end
