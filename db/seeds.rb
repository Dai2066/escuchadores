# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'faker'

#DESTROY
puts "destroying database"
Appointment.destroy_all
Service.destroy_all
User.destroy_all

#CREATE
puts "creating seeds"

#UPLOAD SERVICE PHOTOS

#iglesia
file_service1 = URI.open('https://images.unsplash.com/photo-1555696958-c5049b866f6f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80')

#caminar
file_service2 = URI.open('https://images.unsplash.com/photo-1564396345411-16cff04dad31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=626&q=80')

#existir
file_service3 = URI.open('https://images.unsplash.com/photo-1469237559036-c4645cda1a05?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')

#pasear a tu perro
file_service4 = URI.open('https://images.unsplash.com/photo-1505333495796-5b46a56bec90?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBldCUyMGElMjBkb2clMjBmcmllbmRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')

#tomar café
file_service5 = URI.open('https://images.unsplash.com/photo-1459257868276-5e65389e2722?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29mZWV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')

#cenar con tu familia
file_service6 = URI.open('https://images.unsplash.com/photo-1578496780896-7081cc23c111?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFtaWx5JTIwZGlubmVyfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')

#a correr
file_service7 = URI.open('https://images.unsplash.com/photo-1456613820599-bfe244172af5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHJ1bnxlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')

#al museo
file_service8 = URI.open('https://images.unsplash.com/photo-1554907984-15263bfd63bd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bXVzZXVtfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')

#a estudiar
file_service9 = URI.open('https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3R1ZHl8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60')


#UPLOAD AVATAR PHOTOS

#pedro
fileavatar1 = URI.open('https://avatars.githubusercontent.com/u/82399802?v=4')

#migue
fileavatar2 = URI.open('https://avatars.githubusercontent.com/u/83521669?v=4')

#dai
fileavatar3 = URI.open('https://avatars.githubusercontent.com/u/62758510?v=4')

#martin
fileavatar4 = URI.open('https://avatars.githubusercontent.com/u/83670863?v=4')

#Ro
fileavatar5 = URI.open('https://avatars.githubusercontent.com/u/28849390?v=4')

#gus
fileavatar6 = URI.open('https://avatars.githubusercontent.com/u/56802137?v=4')

#glen
fileavatar7 = URI.open('https://avatars.githubusercontent.com/u/75204025?v=4')

#euge
fileavatar8 = URI.open('https://avatars.githubusercontent.com/u/83710646?v=4')

#santi
fileavatar9 = URI.open('https://avatars.githubusercontent.com/u/64335515?v=4')

#CREATE USERS

user1 = User.new(email: "123@abc.com", password: "123456789", first_name: Faker::Name.name , last_name: Faker::Name.last_name, phone_number: 123456789)
user1.photo.attach(io: fileavatar1, filename: 'testavatar1.png', content_type: 'image/png')
user1.save

user2 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user2.photo.attach(io: fileavatar2, filename: 'testavatar2.png', content_type: 'image/png')
user2.save

user3 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user3.photo.attach(io: fileavatar3, filename: 'testavatar2.png', content_type: 'image/png')
user3.save

user4 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user4.photo.attach(io: fileavatar4, filename: 'testavatar2.png', content_type: 'image/png')
user4.save

user5 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user5.photo.attach(io: fileavatar5, filename: 'testavatar2.png', content_type: 'image/png')
user5.save

user6 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user6.photo.attach(io: fileavatar6, filename: 'testavatar2.png', content_type: 'image/png')
user6.save

user7 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user7.photo.attach(io: fileavatar7, filename: 'testavatar2.png', content_type: 'image/png')
user7.save

user8 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user8.photo.attach(io: fileavatar8, filename: 'testavatar2.png', content_type: 'image/png')
user8.save

user9 = User.new(email: "456@abc.com", password: "123456789", first_name: Faker::Name.name, last_name: Faker::Name.last_name, phone_number: 1234567890)
user9.photo.attach(io: fileavatar9, filename: 'testavatar2.png', content_type: 'image/png')
user9.save

#CREATE SERVICES

#iglesia
service1 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 5, user: user1, plan: "a la iglesia" )
service1.photo.attach(io: file_service1, filename: 'test1.png', content_type: 'image/png')
service1.save

#caminar
service2 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "a caminar" )
service2.photo.attach(io: file_service2, filename: 'test2.png', content_type: 'image/png')
service2.save

#existir
service3 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "a existir" )
service3.photo.attach(io: file_service3, filename: 'test2.png', content_type: 'image/png')
service3.save

#pasear a tu perro
service4 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "a pasear al perro" )
service4.photo.attach(io: file_service4, filename: 'test2.png', content_type: 'image/png')
service4.save

#tomar café
service5 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "a tomar un café" )
service5.photo.attach(io: file_service5, filename: 'test2.png', content_type: 'image/png')
service5.save

#cena con tu familia
service6 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "a cenar con tu flia" )
service6.photo.attach(io: file_service6, filename: 'test2.png', content_type: 'image/png')
service6.save

#correr
service7 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "a correr" )
service7.photo.attach(io: file_service7, filename: 'test2.png', content_type: 'image/png')
service7.save

#al museo
service8 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "al museo" )
service8.photo.attach(io: file_service8, filename: 'test2.png', content_type: 'image/png')
service8.save

#a estudiar
service9 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: Faker::Address.street_address, price: 6, user: user1, plan: "a estudiar" )
service9.photo.attach(io: file_service9, filename: 'test2.png', content_type: 'image/png')
service9.save


#CREATE APPOINTMENTS

appointment1 = Appointment.new(service: service1, user: user1)
appointment1.save

appointment2 = Appointment.new(service: service2, user: user2)
appointment2.save

#FINISH
puts "finished"
