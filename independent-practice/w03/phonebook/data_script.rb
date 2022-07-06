require 'faker'

File.open("data2.txt", "w") do |f| 
  500.times do
    f.write "#{Faker::Name.last_name},#{Faker::Name.first_name},#{Faker::PhoneNumber.cell_phone}\n"
  end
end