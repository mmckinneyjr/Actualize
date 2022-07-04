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

# 10.times do
#   actor = Actor.new({ first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, known_for: Faker::Movie.title })
#   actor.save
# end

# Movie.create(title: "Back to the Future", year: "1985", plot: "Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.")

# Movie.create(title: "Requiem for a Dream", year: "2000", plot: "The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.")

# Movie.create(title: "Top Gun", year: "1986", plot: "As students at the United States Navy's elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor that are not taught in the classroom.")

# Movie.create(title: "Batman", year: "1989", plot: "The Dark Knight of Gotham City begins his war on crime with his first major enemy being Jack Napier, a criminal who becomes the clownishly homicidal Joker.")

# Movie.create(title: "Eternal Sunshine of the Spotless Mind", year: "2004", plot: "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.")

Movie.create(title: "highlander", year: "1986", plot: "An immortal Scottish swordsman must confront the last of his immortal opponent, a murderously brutal barbarian who lusts for the fabled Prize.")
