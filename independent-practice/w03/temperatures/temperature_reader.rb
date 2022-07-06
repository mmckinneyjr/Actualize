class TemperatureReader
  attr_reader :readings

  def initialize(filename)
    # Here, you should read all the temperatures from the file,
    # and store them in the @readings array as Fahrenheit degrees
  end

  def average_fahrenheit
    # This method should use the @readings array to compute the average
    # temperature from all the readings
  end

  def kelvin_to_fahrenheit(degrees)
    # This method should convert a number from Kelvin to Fahrenheit.
    # This method should be called in the constructor (initialize) above.
  end

  def celsius_to_fahrenheit(degrees)
    # This method should convert a number from Celsius to Fahrenheit.
    # This method should be called in the constructor (initialize) above.
  end

end

# Example usage of the reader: 
reader = TemperatureReader.new("readings.txt")
puts reader.average_fahrenheit

