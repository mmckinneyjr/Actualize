require_relative "entry"

class Phonebook
  attr_reader :entries

  def initialize(filename)
    @entries = []
    file = File.open(filename)
    file.readlines.map(&:chomp).map { |x| @entries << Entry.new((x.split(",")[0]), (x.split(",")[1]), (x.split(",")[2])) }
    @entries = @entries.sort_by { |x| [x.last_name, x.first_name] }
  end

  def full_name_lookup(last_name, first_name)
    entries.each do |entry|
      if entry.last_name.downcase == last_name.downcase && entry.first_name.downcase == first_name.downcase
        return entry
      end
    end
  end

  def last_name_lookup(last_name)
    temp = []
    entries.each do |entry|
      if entry.last_name.downcase == last_name.downcase
        temp << entry
      end
    end
    return temp
  end

  def print
    entries.each do |entry|
      entry.print
    end
  end
end
