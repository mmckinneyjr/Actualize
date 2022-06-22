##### Exercise 01 #####

class Person

    def initialize(first_name, last_name, hair_color, hobbies)
        @first_name = first_name
        @last_name = last_name
        @hair_color = hair_color
        @hobbies = hobbies
    end

    def first_name
        @first_name.capitalize
    end

    def last_name
        @last_name.capitalize
    end

    def hair_color
        @hair_color
    end

    def hobbies
        @hobbies
    end

    def add_hobby(hobby)
        @hobbies << hobby
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def email
        "#{first_name}.#{last_name}@gmail.com"
    end

    def info   
        hobbies_string = ""
        hobbies.each_with_index do |n, i|
            if i < hobbies.size - 1
                hobbies_string = "#{hobbies_string} #{n},"
            else
                hobbies_string = "#{hobbies_string} and #{n}"
            end
        end

        return "Name: #{full_name}\nEmail: #{email}\nHair Color: #{hair_color}\nHobbies:#{hobbies_string}"
    end

end


people = [
    Person.new("bob", "jones", "pink", ["basketball", "chess", "phone tag", "swimming"]),
    Person.new("Molly", "Parker", "black", ["computer programming", "reading", "jogging"]),
    Person.new("Kelly", "Miller", "rainbow", ["cricket", "baking", "stamp collecting"])
]

i = 0
while i < people.size 
    puts people[i].info
    puts
    i += 1
end



##### Exercise 02 #####
##### Exercise 03 #####

class ContactList

    def initialize(title, contacts)
        @title = title
        @contacts = [contacts]
    end


    def add_contact(person)
        @contacts << person
    end

end

my_contacts = ContactList.new("School", people[0].first_name)

my_contacts.add_contact(people[1].first_name)
my_contacts.add_contact(people[2].first_name)



p my_contacts

