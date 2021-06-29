# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Appointment.destroy_all
Service.destroy_all
User.destroy_all

file = URI.open('https://images.unsplash.com/photo-1469237559036-c4645cda1a05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')

fileavatar = URI.open('https://avatars.githubusercontent.com/u/82399802?v=4')

user1 = User.new(email: "123@abc.com", password: "123456789", first_name: "Miguel", last_name: "Santamaria", phone_number: 123456789)
user1.photo.attach(io: fileavatar, filename: 'testavatar1.png', content_type: 'image/png')
user1.save

user2 = User.new(email: "456@abc.com", password: "123456789", first_name: "Peter", last_name: "Clears", phone_number: 1234567890)
user2.photo.attach(io: fileavatar, filename: 'testavatar2.png', content_type: 'image/png')
user2.save

service1 = Service.new(start_time: DateTime.now, duration: 1, place: "calle falsa 123", price: 5, user: user1, plan: "ir al parque" )
service1.photo.attach(io: file, filename: 'test1.png', content_type: 'image/png')
service1.save
service2 = Service.new(start_time: DateTime.now, duration: 1, place: "calle mas falsa 123", price: 6, user: user1, plan: "tomar un cafe" )
service2.photo.attach(io: file, filename: 'test2.png', content_type: 'image/png')
service2.save

appointment1 = Appointment.new(service: service1, user: user2)
appointment1.save
appointment2 = Appointment.new(service: service2, user: user2)
appointment2.save





article = Article.new(title: 'NES', body: "A great console")

