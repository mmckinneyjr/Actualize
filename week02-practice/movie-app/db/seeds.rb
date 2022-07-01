# actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
# actor.save

# actor = Actor.new({ first_name: "Bill", last_name: "Murray", known_for: "Ghostbusters" })
# actor.save

# actor = Actor.new({ first_name: "Michael J.", last_name: "Fox", known_for: "Back to the Future" })
# actor.save

# actor = Actor.new({ first_name: "Bob", last_name: "Saget", known_for: "Full House" })
# actor.save

# actor = Actor.new({ first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, known_for: "Batman" })
# actor.save

10.times do
  actor = Actor.new({ first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, known_for: Faker::Movie.title })
  actor.save
end
