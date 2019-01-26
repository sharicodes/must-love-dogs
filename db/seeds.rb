# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting seeds"

#Caregiver.destroy_all
#Service.destroy_all
Careservice.destroy_all
#Dog.destroy_all
#User.destroy_all
# Admin.destroy_all



# Caregiver.create(name: "Gabbie P", neighborhood: "Hoboken", bio: "Proud Sammy mom, love all dogs!", picture_url: "https://fscomps.fotosearch.com/compc/BLD/BLD087/asian-woman-petting-dog-stock-photo__bld102472.jpg")
# Caregiver.create(name: "Shari R", neighborhood: "UES", bio: "I love dogs", picture_url: "")
# Caregiver.create(name: "Amy A", neighborhood: "Hoboken", bio: "Been walking dogs for a while, let me walk your dog!", picture_url: "")
# Caregiver.create(name: "Dave Jones", neighborhood: "UWS", bio: "Love all dogs!", picture_url: "https://c8.alamy.com/comp/C7N8WN/man-holding-a-dog-on-leash-paris-ile-de-france-france-C7N8WN.jpg")
# Caregiver.create(name: "Mike Cheng", neighborhood: "Midtown", bio: "Dog Lover for Life!", picture_url: "https://st.focusedcollection.com/14026668/i/650/focused_177544954-stock-photo-portrait-happy-man-his-dog.jpg")
# Caregiver.create(name: "Billy King", neighborhood: "Downtown", bio: "Love all dogs!", picture_url: "https://cdn7.dissolve.com/p/D145_41_271/D145_41_271_1200.jpg")
# Caregiver.create(name: "Steve Donovan", neighborhood: "UES", bio: "Love all dogs!", picture_url: "https://cdn6.dissolve.com/p/D145_98_998/D145_98_998_1200.jpg")





puts "#{Caregiver.all.length} Caregivers"


# Service.create(name: "30 Minute Walk", description: "We will safely walk your dog around your neighborhood for 30m")
# Service.create(name: "1 Hour Walk", description: "We will safely walk your dog around your neighborhood for 1 hr")
# Service.create(name: "Overnight Dogsit", description: "We will watch and walk your dog while you're out of town for 1 night")
# Service.create(name: "Grooming", description: "We will groom your dog for you in your house")
# Service.create(name: "Vet Appointment", description: "We will take your dog to the vet")
 puts "#{Service.all.length} Services"

Careservice.create(caregiver_id: 4, service_id: 6)
Careservice.create(caregiver_id: 5, service_id: 7)
Careservice.create(caregiver_id: 6, service_id: 8)
Careservice.create(caregiver_id: 7, service_id: 9)
Careservice.create(caregiver_id: 8, service_id: 10)
Careservice.create(caregiver_id: 9, service_id: 6)
Careservice.create(caregiver_id: 10, service_id: 6)
Careservice.create(caregiver_id: 4, service_id: 7)
Careservice.create(caregiver_id: 4, service_id: 9)
Careservice.create(caregiver_id: 5, service_id: 6)
Careservice.create(caregiver_id: 5, service_id: 10)
Careservice.create(caregiver_id: 6, service_id: 6)
Careservice.create(caregiver_id: 6, service_id: 7)
Careservice.create(caregiver_id: 7, service_id: 7)
Careservice.create(caregiver_id: 7, service_id: 10)
Careservice.create(caregiver_id: 7, service_id: 6)
Careservice.create(caregiver_id: 8, service_id: 6)
Careservice.create(caregiver_id: 8, service_id: 7)
Careservice.create(caregiver_id: 9, service_id: 7)
Careservice.create(caregiver_id: 9, service_id: 10)
Careservice.create(caregiver_id: 10, service_id: 7)
Careservice.create(caregiver_id: 10, service_id: 9)
Careservice.create(caregiver_id: 10, service_id: 10)
Careservice.create(caregiver_id: 8, service_id: 9)
Careservice.create(caregiver_id: 9, service_id: 8)






puts "#{Careservice.all.length} Careservices"

# User.create(full_name: "Jane Doe", phone_number: 1234567890, neighborhood: "Hells Kitchen", email: "janedoe@gmail.com", username: "jane", password_digest: "password")
# User.create(full_name: "John Smith", phone_number: 1234567890, neighborhood: "UWS", email: "johnsmith@gmail.com", username: "john", password_digest: "password")
# User.create(full_name: "Nison Malayev", phone_number: 1234567890, neighborhood: "Hoboken", email: "nisonmalayev@gmail.com", username: "nison", password_digest: "password")
# User.create(full_name: "Oli Nelson", phone_number: 1234567890, neighborhood: "Park Slope", email: "olinelson@gmail.com", username: "oli", password_digest: "password")
# puts "#{User.all.length} Users"
#
# Dog.create(name: "Rover", age: 2, size: "small", vet_name: "Dr. Vet", food_name: "Kibble King", img_url: "", user_id: 1)
# Dog.create(name: "Bravo", age: 11, size: "large", vet_name: "Dr. Vet", food_name: "Diabetes Food", img_url: "", user_id: 2)
# Dog.create(name: "Lyra", age: 1, size: "large", vet_name: "Dr. Vet", food_name: "Chicken", img_url: "", user_id: 2)
# Dog.create(name: "Woofy", age: 6, size: "medium", vet_name: "Dr. Vet", food_name: "Kibble King", img_url: "", user_id: 3)
# Dog.create(name: "Fluffy", age: 4, size: "medium", vet_name: "Dr. Vet", food_name: "Chicken Livers", img_url: "", user_id: 4)
# puts "#{Dog.all.length} Dogs"

puts "finished seeding"
