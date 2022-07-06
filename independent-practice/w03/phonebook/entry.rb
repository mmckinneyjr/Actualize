class Entry
  attr_reader :last_name, :first_name, :phone

  def initialize(last_name, first_name, phone)
    @last_name = last_name
    @first_name = first_name
    @phone = phone
  end

  def print
    puts "#{self.last_name}, #{self.first_name}: #{self.phone}"
  end
end