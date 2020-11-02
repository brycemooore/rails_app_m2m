# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hero.destroy_all
Power.destroy_all
HeroPower.destroy_all

10.times do 
    Power.create(title: Faker::Superhero.power, description: Faker::GreekPhilosophers.quote)
end 

10.times do
    s = Hero.create(name: Faker::Superhero.name, city: Faker::Address.city)
    s.add_power(Power.all.sample.title)
end

# HeroPower.create(super_hero_id: SuperHero.first.id, power_id: Power.first.id)


