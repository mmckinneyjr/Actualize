class TemperatureReader
  attr_reader :readings

  def initialize(filename)
    @readings = []

    IO.foreach(filename) do |line|
      if line.include? "K"
        kelvin_to_fahrenheit(line)
      elsif line.include? "C"
        celsius_to_fahrenheit(line)
      else
        @readings << line[0..-1].to_f
      end
    end
    @readings
  end

  def average_fahrenheit
    sum = 0
    @readings.each do |temp|
      sum += temp
    end
    return (sum / @readings.size).round(3)
  end

  def kelvin_to_fahrenheit(degrees)
    k = (degrees[0..-1]).to_f
    fahrenheit_temp = (1.8 * (k - 273.15) + 32)
    @readings << fahrenheit_temp
  end

  def celsius_to_fahrenheit(degrees)
    c = (degrees[0..-1]).to_f
    fahrenheit_temp = (1.80 * (c) + 32)
    @readings << fahrenheit_temp
  end
end

# Example usage of the reader:
reader = TemperatureReader.new("readings.txt")
puts reader.average_fahrenheit
