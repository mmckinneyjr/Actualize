class Alderman
  attr_reader :ward, :name, :email, :phone, :zip

  def initialize(input_options)
    @ward = input_options[:ward] || "No info provided"
    @first_name = first_name(input_options[:name]) || "No info provided"
    @last_name = last_name(input_options[:name]) || "No info provided"
    @email = input_options[:email] || "No info provided"
    @phone = input_options[:phone] || "No info provided"
    @zip = input_options[:zip] || "No info provided"
  end

  def first_name(name)
    name.nil? ? "No info provided" : name.split(",")[1]
  end

  def last_name(name)
    name.nil? ? "No info provided" : name.split(",")[0]
  end

  def print_alderman
    puts "Ward: #{@ward}"
    puts "First Name: #{@first_name.strip}"
    puts "Last Name: #{@last_name}"
    puts "Zip Code: #{@zip}"
    puts "Email: #{@email}"
    puts "Phone: #{@phone}"
    puts
  end
end
