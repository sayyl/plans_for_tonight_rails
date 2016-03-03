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
#   category_id = Faker::Number.between(1)
#   name = Faker::App.name
#   location = Faker::Address.city
#   description = Faker::Lorem.sentences.join(" ")
#   show_date = Faker::Time.between(DateTime.now - 185, DateTime.now)
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
#     duration: duration,
#     # remote_image_url: remote_image_url,
#     ticket_available: ticket_available
#   )
# end

###### SEED DATA #####

# Category.create!(
#   name: "Arts & Theatre",
#   description: "Arts & Theatre",
# )

# Category.create!(
#   name: "Sports",
#   description: "Sports",
# )

# Category.create!(
#   name: "Music",
#   description: "Music",
# )

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Belle Plaine and The Unrequited Love with Megan Nash",
#   location: "Calgary",
#   description: "Belle Plaine performs her new album 'The Unrequited Love'.",
#   show_date: Faker::Date.between(60.days.ago, 50.days.ago),
#   duration: 150,
#   # remote_image_url: remote_image_url,
#   ticket_available: 35,
#   general_ticket: 20,
# )

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "VOICES",
#   location: "Saskatoon",
#   description: "3 Voices, 3 Operas!",
#   show_date: Faker::Date.between(50.days.ago, 40.days.ago),
#   duration: 120,
#   # remote_image_url: remote_image_url,
#   ticket_available: 30,
#   general_ticket: 30
# )

# 10.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 60,
#     successful: true,
#     event_id: 7,
#     created_at: Faker::Time.between("2016-01-18 08:00:00", "2016-01-19 23:57:00", :all)
#   )
# end

# 4.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 30,
#     successful: true,
#     event_id: 7,
#     created_at: Faker::Time.between("2016-01-18 08:00:00", "2016-01-19 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 100,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 101,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 102,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 103,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 104,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 105,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 106,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 107,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 108,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 109,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 110,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 111,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 112,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 113,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 7,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end


# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Stay Wavie",
#   location: "Toronto",
#   description: "Stay Wavie Music Festival showcases the hottest up-and-coming artists from Toronto.",
#   show_date: Faker::Date.between(65.days.ago, 60.days.ago),
#   duration: 300,
#   # remote_image_url: remote_image_url,
#   ticket_available: 30,
#   general_ticket: 30,
# )

# 5.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 60,
#     successful: true,
#     event_id: 8,
#     created_at: Faker::Time.between("2016-01-01 15:00:00", "2016-01-02 15:57:00", :all)
#   )
# end

# 2.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 90,
#     successful: true,
#     event_id: 8,
#     created_at: Faker::Time.between("2016-01-01 15:00:00", "2016-01-02 15:57:00", :all)
#   )
# end

# 6.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 30,
#     successful: true,
#     event_id: 8,
#     created_at: Faker::Time.between("2016-01-01 15:00:00", "2016-01-02 15:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 114,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 115,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 116,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 117,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 118,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 3.times do |n|
#   Ticket.create!(
#     transaction_id: 119,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 3.times do |n|
#   Ticket.create!(
#     transaction_id: 120,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 121,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 122,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 123,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 124,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 125,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 126,
#     price: 30,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 8,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Jamie Grace Popup Show",
#   location: "Vancouver",
#   description: "Jamie Grace pops up in your city for an acoustic, intimate show to sing, play and thank you for your support!",
#   show_date: Faker::Date.between(30.days.ago, 20.days.ago),
#   duration: 90,
#   # remote_image_url: remote_image_url,
#   ticket_available: 20,
#   general_ticket: 15,
#   child_ticket: 5
# )

# 2.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 30,
#     successful: true,
#     event_id: 9,
#     created_at: Faker::Time.between("2016-02-10 15:32:00", "2016-02-11 17:02:00", :all)
#   )
# end

# 11.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 15,
#     successful: true,
#     event_id: 9,
#     created_at: Faker::Time.between("2016-02-10 18:32:00", "2016-02-11 02:02:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 127,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 128,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 129,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 130,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 131,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 132,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 133,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 134,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 135,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 136,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 137,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 138,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 139,
#     price: 15,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 9,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Ms Dynamite",
#   location: "Edmonton",
#   description: "Edmonton's top DJs",
#   show_date: Faker::Date.between(10.days.ago, 5.days.ago),
#   duration: 150,
#   # remote_image_url: remote_image_url,
#   ticket_available: 15,
#   general_ticket: 25,
# )

# 4.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 50,
#     successful: true,
#     event_id: 10,
#     created_at: Faker::Time.between("2016-02-20 03:16:00", "2016-02-21 18:02:00", :evening)
#   )
# end

# 7.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 25,
#     successful: true,
#     event_id: 10,
#     created_at: Faker::Time.between("2016-02-20 11:16:00", "2016-02-21 00:02:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 151,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 152,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 153,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 2.times do |n|
#   Ticket.create!(
#     transaction_id: 154,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 155,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 156,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 157,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 158,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 159,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 160,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 1.times do |n|
#   Ticket.create!(
#     transaction_id: 161,
#     price: 25,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 10,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
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

# Corporate.create!(
#   name: "BK Events",
#   address_1: "123 Eagle St.",
#   city: "Vancouver",
#   province: "BC",
#   postal_code: "V1V 1V1",
#   country: "Canada",
#   phone: 6042223344,
#   website_url: "http://www.brevents.com",
#   email: "brevents@gmail.com",
#   password: "pass1234",
#   password_confirmation: "pass1234",
#   business_number: 123456789,
#   verified: true
# )

# Transaction.create!(
#   consumer_id: 1,
#   total: 50,
#   successful: true,
#   event_id: 1,
#   created_at: "2015-10-23 01:00:00"
# )
# 10.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 20,
#     successful: true,
#     event_id: 1,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 10.times do |n|
#   Ticket.create!(
#     transaction_id: Faker::Number.between(3, 12),
#     price: 20,
#     ticket_type: "General",
#     confirmation_num: Faker::Number.number(9),
#     event_id: 1,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end

# 10.times do |n|
#   Transaction.create!(
#     consumer_id: Faker::Number.between(1, 10),
#     total: 20,
#     successful: true,
#     event_id: 1,
#     created_at: Faker::Time.between("2015-10-23 01:00:00", "2015-10-24 23:57:00", :all)
#   )
# end


###CHANGE COLUMN
# 500.times do |n|
#   type_array = ["General", "Adult", "Child"]
#   event_id = Event.all.sample.id
#   transaction_id = Transaction.all.sample.id
#   price = Faker::Number.between(20, 150)
#   type = type_array.sample
#   confirmation_num = Faker::Number.number(8)
#   Ticket.create!(
#     event_id: event_id,
#     transaction_id: transaction_id,
#     price: price,
#     type: type,
#     confirmation_num: confirmation_num
#   )
# end
