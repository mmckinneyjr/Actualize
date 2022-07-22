require "http"
require "./alderman"
require "./removal_request"

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

    alderman.print_alderman
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

    removal_request.print_request
  end
end

get_wards()
