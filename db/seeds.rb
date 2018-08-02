# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.all.each_with_index  do |u, i|
  u.update(avatar: avatars[i])
  u.save
end

User.all.each_with_index  do |u, i|
  puts u.avatar
  puts i
  puts avatars[i]
end

avatars = [
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/Abraham.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/elliot.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/joe.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/matt.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/rachel.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/ade.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/elyse.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/justen.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/matthew.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/steve.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/chris.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/eve.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/kristy.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/molly.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/stevie.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/christian.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/helen.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/laura.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/nan.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/tom.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/daniel.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/jenny.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/mark.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/patrick.jpg",
"https://raw.githubusercontent.com/siobhanpmahoney/heroku-chatster-frontend/master/src/components/lib/avatars/veronika.jpg"
]


Message.all.map {|m| puts "#{m.created_at} — #{m.content}"}

User.all.map {|c| puts "#{c.created_at} — #{c.username}"}





User.all.each do |u|
  u.update(avatar: avatars.sample)
  u.save
end



# 2.times do
#   User.all.each do |user|
#     friend = User.all.sample
#     if friend.id != user.id
#       Friendship.find_or_create_by(user_id: user.id, friend_id: friend.id)
#       Friendship.find_or_create_by(user_id: friend.id, friend_id: user.id)
#     end
#   end
# end
#
#
# User.all.each do |user|
#   user.friends.each do |friend|
#     chat_title = Faker::Book.title
#     if !Chat.find_by(title: chat_title)
#       chat = Chat.create(title: chat_title)
#       UserChat.create(user_id: user.id, chat_id: chat.id)
#       UserChat.create(user_id: friend.id, chat_id: chat.id)
#     end
#   end
# end
#
#
# 3.times do
#   Chat.all.each do |chat|
#     chat.users.each do |user|
#       Message.create(content: Faker::HarryPotter.quote, chat_id: chat.id, user_id: user.id)
#     end
#   end
# end
#
#
# 3.times do
#   Chat.all.each do |chat|
#     chat.users.each do |user|
#       Message.create(content: Faker::TwinPeaks.quote, chat_id: chat.id, user_id: user.id)
#     end
#   end
# end
#
#
#
# 3.times do
#   Chat.all.each do |chat|
#     chat.users.each do |user|
#       Message.create(content: Faker::Movie.quote, chat_id: chat.id, user_id: user.id)
#     end
#   end
# end
#
#
#
#
# #user_ids: 1, 14
#
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun} in #{Faker::ProgrammingLanguage.name}",
#   user_id: 1,
#   chat_id: 100
# )
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.abbreviation}",
#   user_id: 14,
#   chat_id: 100
# )
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun} in #{Faker::ProgrammingLanguage.name}",
#   user_id: 1,
#   chat_id: 100
# )
#
# Message.create(
#   content:"#{Faker::Hacker.ingverb} #{Faker::Hacker.abbreviation}",
#   user_id: 14,
#   chat_id: 100
# )
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun} in #{Faker::ProgrammingLanguage.name}",
#   user_id: 14,
#   chat_id: 100
# )
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.abbreviation}",
#   user_id: 1,
#   chat_id: 100
# )
#
#
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun} in #{Faker::ProgrammingLanguage.name}",
#   user_id: 14,
#   chat_id: 100
# )
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.abbreviation}",
#   user_id: 14,
#   chat_id: 100
# )
#
# Message.create(
#   content: Faker::Hacker.say_something_smart,
#   user_id: 1,
#   chat_id: 100
# )
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun} in #{Faker::ProgrammingLanguage.name}",
#   user_id: 14,
#   chat_id: 100
# )
#
# Message.create(
#   content: "#{Faker::Hacker.ingverb} #{Faker::Hacker.abbreviation}",
#   user_id: 1,
#   chat_id: 100
# )
#
# Message.create(
#   content: Faker::Hacker.say_something_smart,
#   user_id: 14,
#   chat_id: 100
# )
#
#
#
#
#
# # 10.times do
# #   User.find_or_create_by(username: Faker::Overwatch.hero)
# # end
# #
# # User.all.each do |user|
# #   friend = User.all.sample
# #   if friend.id != user.id
# #     Friendship.create(user_id: user.id, friend_id: friend.id)
# #     Friendship.create(user_id: friend.id, friend_id: user.id)
# #   end
# # end
# #
# # 3.times do
# #   Chat.create(title: Faker::Overwatch.location)
# # end
# #
# # Chat.all.each do |c|
# #   person = User.all.sample
# #   UserChat.create(user_id: person.id, chat_id: c.id)
# #   UserChat.create(user_id: person.friends.sample.id, chat_id: c.id)
# # end
# #
# # 20.times do
# #   chat = Chat.all.sample.id
# #   user = User.all.sample.id
# #   Message.create(content: Faker::Overwatch.quote, chat_id: chat, user_id: user)
# # end
