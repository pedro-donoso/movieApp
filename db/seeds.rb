# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do
    Movie.create(name: Faker::Movie.title,
                synopsis: Faker::Movie.quote,
                director: Faker::Name.name,
    )
    end
    
    20.times do
    Serie.create(name: Faker::Serie.title,
                synopsis: Faker::Serie.quote,
                director: Faker::Name.name,
    )
    end
    
    20.times do
    Documentary_film.create(name: Faker::Documentary_film.title,
                synopsis: Faker::Movie.quote,
                director: Faker::Name.name,
    )
    end