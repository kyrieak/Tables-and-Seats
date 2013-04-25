# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    
    Table.create({ party: "The Fitzpatricks"})
    Table.create({ party: "The Winters"})
    Table.create({ party: "The Kopczynskis"})
    Table.create({ party: "The Geerlings"})
    Table.create({ party: "The Davidsons"})
    Table.create({ party: "The Connors"})


    occupants = ["Me", "Brother", "Sister", "Second Cousin", "Cousin", "Cat", "Dog"]
    occupants += ["Mom", "Dad", "Aunt", "Uncle"]
    occupants += ["Grandma", "Grandpa"]

    Mood.create(:name => "Happy")
    Mood.create(:name => "Bored")
    Mood.create(:name => "Irritated")

    6.times do
      person = occupants[rand(11)]
      Seat.create({table_id: 1, mood_id: rand(1..3), occupant: person})
    end

    5.times do
      person = occupants[rand(11)]
      Seat.create({table_id: 2, mood_id: rand(1..3), occupant: person})
    end

    3.times do
      person = occupants[rand(11)]
      Seat.create({table_id: 3, mood_id: rand(1..3), occupant: person})
    end