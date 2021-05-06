# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#puts "Begin Destroy"

#Dog.destroy_all
#Dogsitter.destroy_all
#Stroll.destroy_all
#City.destroy_all

#puts "Destroy Finished"

#20.times do
#	dogsitter = Dogsitter.create!(name: Faker::Name.name)
#end

#60.times do
#	dog = Dog.create!(name: Faker::FunnyName.name)
#end

#25.times do
#	stroll = Stroll.create!(dog_id: rand(1..60), dogsitter_id: rand(1..20))
#end

#10.times do
#	city = City.create!(name: Faker::Address.city)
#end

Dog.all.each do |c|
	index = rand(0..9)
	c.city_id = City.all[index].id
	c.save!
end 

Dogsitter.all.each do |c|
	index = rand(0..9)
	c.city_id = City.all[index].id
	c.save!
end 


puts "End of Seeding"

