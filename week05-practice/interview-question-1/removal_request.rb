class RemovalRequest
  attr_reader :ward, :police_district, :status, :creation_date, :completion_date, :surface_type, :request_number, :address

  def initialize(input_options)
    @ward = input_options[:ward] || "No info provided"
    @police_district = input_options[:police_district] || "No info provided"
    @status = input_options[:status] || "No info provided"
    @creation_date = input_options[:creation_date].nil? ? "No info provided" : input_options[:creation_date].split("T")[0]
    @completion_date = input_options[:completion_date].nil? ? "No info provided" : input_options[:completion_date].split("T")[0]
    @surface_type = input_options[:surface_type] || "No info provided"
    @request_number = input_options[:request_number] || "No info provided"
    @address = input_options[:address] || "No info provided"
  end

  def print_request
    puts "Request: #{@request_number}"
    puts "Ward: #{@ward}"
    puts "Status: #{@status}"
    puts "Created Date: #{@creation_date}"
    puts "Completed Date: #{@completion_date}"
    puts "Surface Type: #{@surface_type}"
    puts "Address: #{@address}"
    puts "Police District: #{police_district}"
    puts
  end
end
