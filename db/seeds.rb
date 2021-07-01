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
file_service1 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080044/vm2w84clctwk14nn8yn3zxyzfxr2.jpg')

#caminar
file_service2 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080045/svyduxoi914uwqnp5xytzyp23wg8.jpg')

 #existir
 file_service3 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080046/vcqxcj97h4usnm9949mboz9k19lt.jpg')

# #pasear a tu perro
 file_service4 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080047/p4z8qa9lfp2ufg40dln6rjaqdgs8.jpg')

# #tomar café
file_service5 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080048/7pybw3rd7g5poythexfxgw5igo8p.jpg')

# #cenar con tu familia
 file_service6 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080050/2ngflg1chvc04k1u1bb0hd0qc540.jpg')

# #a correr
 file_service7 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080051/j4ij3hqafb3hyg9j4s89wb7k9u4d.jpg')

# #al museo
 file_service8 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080052/ti3pgji7vitz9zlo1gedpi145m2y.jpg')

# #a estudiar
 file_service9 = URI.open('https://res.cloudinary.com/dpgtrewfb/image/upload/v1625080053/6utt08pzkqkquv32gq38j1zzl7mn.jpg')


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
service1 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: "Buenos Aires", price: 700, user: user1, plan: "Soy teologo, me encanta hablar de temas espirituales. Tengo 50 años y me considero muy paciente" )
service1.photo.attach(io: file_service1, filename: 'test1.png', content_type: 'image/png')
service1.save

#caminar
service2 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 2, place: "Buenos Aires", price: 750, user: user2, plan: "Me gusta mucho estar al aire libre, tomar caminatas, tener largas conversaciones y hacer amigos" )
service2.photo.attach(io: file_service2, filename: 'test2.png', content_type: 'image/png')
service2.save

# #existir
 service3 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: "Buenos Aires", price: 800, user: user1, plan: "Me encanta meditar y sentirme en paz, conectar con otros a nivel personal, soy padre de 2 hijos" )
 service3.photo.attach(io: file_service3, filename: 'test2.png', content_type: 'image/png')
 service3.save

# #pasear a tu perro
 service4 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: "Mendoza", price: 950, user: user1, plan: "Me encantan los animales, tengo 2 gatos y un perro, soy veterinario desde hace mas de 10 años" )
 service4.photo.attach(io: file_service4, filename: 'test2.png', content_type: 'image/png')
 service4.save

# #tomar café
 service5 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: "Mendoza", price: 700, user: user2, plan: "Soy barista, disfruto mucho la compañia de otros, socializar, ir de fiesta.." )
 service5.photo.attach(io: file_service5, filename: 'test2.png', content_type: 'image/png')
 service5.save

# #cena con tu familia
 service6 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 1, place: "Cordoba", price: 650, user: user1, plan: "Me desempeño como terapeuta hace muchos años, busco poder compartir con tu circulo social" )
 service6.photo.attach(io: file_service6, filename: 'test2.png', content_type: 'image/png')
 service6.save

# #correr
 service7 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 2, place: "Cordoba", price: 850, user: user2, plan: "Amo el deporte! en especial correr y hacer trekking, prefiero practicar deporte con otros" )
 service7.photo.attach(io: file_service7, filename: 'test2.png', content_type: 'image/png')
 service7.save

# #al museo
service8 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 2, place: "Cordoba", price: 800, user: user1, plan: "Mis cosas favoritas son la poesia, los libros, el arte. Prefiero hablar de temas culturales" )
service8.photo.attach(io: file_service8, filename: 'test2.png', content_type: 'image/png')
service8.save

# #a estudiar
 service9 = Service.new(start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long), duration: 3, place: "Rosario", price: 1000, user: user2, plan: "Soy docente, trato de ayudar a que las personas aprenden de la forma mas facil posible" )
 service9.photo.attach(io: file_service9, filename: 'test2.png', content_type: 'image/png')
 service9.save


# #CREATE APPOINTMENTS

 appointment1 = Appointment.new(service: service1, user: user1)
 appointment1.save

 appointment2 = Appointment.new(service: service2, user: user2)
 appointment2.save

#FINISH
puts "finished"
