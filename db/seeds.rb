# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting seeds"

Caregiver.destroy_all
Service.destroy_all
Careservice.destroy_all
Dog.destroy_all
User.destroy_all
Admin.destroy_all



Caregiver.create(name: "Gabbie P", neighborhood: "Hoboken", bio: "Proud Sammy mom, love all dogs!", picture_url: "")
Caregiver.create(name: "Shari R", neighborhood: "UES", bio: "I love dogs", picture_url: "")
Caregiver.create(name: "Amy A", neighborhood: "Hoboken", bio: "Been walking dogs for a while, let me walk your dog!", picture_url: "")

Service.create(name: "30m Walk", description: "We will safely walk your dog around your neighborhood for 30m")
Service.create(name: "1hr Walk", description: "We will safely walk your dog around your neighborhood for 1 hr")
Service.create(name: "Overnight Dogsit", description: "We will watch and walk your dog while you're out of town for 1 night")
Service.create(name: "Grooming", description: "We will groom your dog for you in your house")
Service.create(name: "Vet Appointment", description: "We will take your dog to the vet")

Careservice.create(caregiver_id: 1, service_id: 1)
Careservice.create(caregiver_id: 1, service_id: 2)
Careservice.create(caregiver_id: 2, service_id: 3)
Careservice.create(caregiver_id: 3, service_id: 1)
Careservice.create(caregiver_id: 3, service_id: 2)
Careservice.create(caregiver_id: 3, service_id: 3)
Careservice.create(caregiver_id: 3, service_id: 5)

User.create(full_name: "Jane Doe", phone_number: 1234567890, neighborhood: "Hells Kitchen", email: "janedoe@gmail.com")
User.create(full_name: "John Smith", phone_number: 1234567890, neighborhood: "UWS", email: "johnsmith@gmail.com")
User.create(full_name: "Nison Malayev", phone_number: 1234567890, neighborhood: "Hoboken", email: "nisonmalayev@gmail.com")
User.create(full_name: "Oli Nelson", phone_number: 1234567890, neighborhood: "Park Slope", email: "olinelson@gmail.com")

Dog.create(name: "Rover", age: 2, size: "small", vet_name: "Dr. Vet", food_name: "Kibble King", img_url: "", user_id: 1)
Dog.create(name: "Bravo", age: 11, size: "large", vet_name: "Dr. Vet", food_name: "Diabetes Food", img_url: "", user_id: 2)
Dog.create(name: "Lyra", age: 1, size: "large", vet_name: "Dr. Vet", food_name: "Chicken", img_url: "", user_id: 2)
Dog.create(name: "Woofy", age: 6, size: "medium", vet_name: "Dr. Vet", food_name: "Kibble King", img_url: "", user_id: 3)
Dog.create(name: "Fluffy", age: 4, size: "medium", vet_name: "Dr. Vet", food_name: "Chicken Livers", img_url: "", user_id: 4)

puts "finished seeding"
