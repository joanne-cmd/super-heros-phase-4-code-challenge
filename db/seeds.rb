# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "🌱 Seeding ."
20.times do
    Hero.create!(
        name:Faker::Superhero.name,
        super_name:Faker::Games::Pokemon.name  
    )
end

20.times do
    Power.create!(

        name:Faker::Superhero.power,
        description:Faker::Lorem.paragraph
    )
end
Hero.all.each do |hero|
    Power.all.sample(12).each do |power|
      HeroPower.create!(
        hero_id: hero.id,
        power_id: power.id,
        strength: Faker::Games::Overwatch.hero 
      )
    end
  end
puts "✅ Done seeding!"
