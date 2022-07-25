require "http"
require "./alderman"
require "./removal_request"

@aldermans = []
@requests = []

def get_wards
  ward_offices = HTTP.get("https://data.cityofchicago.org/resource/htai-wnw4.json")

  ward_offices.parse.each do |office|
    alderman = Alderman.new(
      ward: office["ward"],
      name: office["alderman"],
      email: office["email"],
      phone: office["ward_phone"],
      zip: office["zipcode"],
    )
    @aldermans << alderman
  end
end

def get_requests
  graffiti_requests = HTTP.get("https://data.cityofchicago.org/resource/hec5-y4x5.json")

  graffiti_requests.parse.each do |request|
    removal_request = RemovalRequest.new(
      request_number: request["service_request_number"],
      ward: request["ward"],
      status: request["status"],
      creation_date: request["creation_date"],
      completion_date: request["completion_date"],
      surface_type: request["what_type_of_surface_is_the_graffiti_on_"],
      street_address: request["address"],
      police_district: request["police_district"],
    )
    @requests << removal_request
  end
end

get_wards()
get_requests()

while true
  puts "-----------------------------------------"
  puts "   Chicago's Graffiti Removal Requests"
  puts "-----------------------------------------"
  puts
  puts "   [1] Alderman's last name"
  puts "   [2] Month and year"
  puts "   [3] Print all Alderman"
  puts "   [4] Print all requests"
  puts "   [5] To exit program"
  puts
  print "Search by: "

  search_by = gets.chomp

  if search_by.to_i == 1
    print "Enter an Alderman's last name: "
    search_alderman = gets.chomp
    puts

    found_alderman = @aldermans.each_index.select { |i| @aldermans[i].last_name.downcase == search_alderman.downcase }

    if found_alderman.empty? == false
      found_alderman.each do |f|
        puts
        puts "-----------------------------------------"
        @aldermans[f].print_alderman
        puts "-----------------------------------------"
        puts
        found_requests = @requests.each_index.select { |i| @requests[i].ward == @aldermans[f].ward }
        found_requests.each do |r|
          @requests[r].print_request
        end
      end
    else
      system("clear")
      puts "-------- NO SEARCH RESULTS FOUND --------"
    end
    puts

    ########################################
  elsif search_by.to_i == 2
    print "Enter a month: "
    search_month = gets.chomp.to_i
    if search_month.between?(1, 12)
      print "Enter a year: "
      search_year = gets.chomp.to_i

      found_searches = @requests.each_index.select { |i|
        ((@requests[i].creation_date)[5..6].to_i == search_month) &&
        ((@requests[i].creation_date)[0..3].to_i == search_year)
      }
      if found_searches.empty? == false
        found_searches.each do |r|
          @requests[r].print_request
        end
      else
        system("clear")
        puts "--------- NO SEACH RESULTS FOUND---------"
        puts
      end
    else
      system("clear")
      puts "------------- INVALID MONTH -------------"
      puts
    end

    ########################################
  elsif search_by.to_i == 3
    puts
    @aldermans.each do |x|
      x.print_alderman
    end
    ########################################
  elsif search_by.to_i == 4
    puts
    @requests.each do |x|
      x.print_request
    end
    ########################################
  elsif search_by.to_i == 5
    exit
  else
    system("clear")
    puts
    puts "#{search_by} is an invalid entry, try again"
  end
end
