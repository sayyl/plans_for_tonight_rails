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
#   name: "Helen Sung Quartet",
#   location: "Vancouver",
#   description: "American and Canadian jazz ensembles coheadline, with guest Laila Biali. Presented by Coastal Jazz as part of its Women in Jazz series.",
#   show_date: Faker::Date.backward(180),
#   duration: 90,
#   # remote_image_url: remote_image_url,
#   ticket_available: 20,
#   general_ticket: 20,
#   child_ticket: 10
# )

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Keys Piano Bar",
#   location: "Vancouver",
#   description: "Jazz piano show featuring 10 artists from around the world.",
#   show_date: Faker::Date.backward(180),
#   duration: 120,
#   # remote_image_url: remote_image_url,
#   ticket_available: 25,
#   general_ticket: 25
# )

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Raine Hamilton",
#   location: "Toronto",
#   description: "Winnipeg-based songstress Raine Hamilton brings her quip and vigor to Toronto with the “Edge of Spring Tour.",
#   show_date: Faker::Date.backward(180),
#   duration: 100,
#   # remote_image_url: remote_image_url,
#   ticket_available: 30,
#   general_ticket: 20,
#   child_ticket: 10
# )

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Hey Ocean!",
#   location: "Vancouver",
#   description: " ‪#‎singitfwdfinale‬ with Mother Mother, Said The Whale, Humans, The Pack AD, Top Less Gay Love Tekno Party, Chin Injeti, and Jocelyn Alice.",
#   show_date: Faker::Date.backward(180),
#   duration: 150,
#   # remote_image_url: remote_image_url,
#   ticket_available: 40,
#   general_ticket: 35,
#   child_ticket: 10
# )

# Event.create!(
#   corporate_id: 1,
#   category_id: 3,
#   name: "Sonic Boom Music Festival",
#   location: "Edmonton",
#   description: "Edmonton's Alternative Music Festival",
#   show_date: Faker::Date.backward(180),
#   duration: 150,
#   # remote_image_url: remote_image_url,
#   ticket_available: 50,
#   general_ticket: 25,
#   child_ticket: 5
# )


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
