class BookReport
  attr_accessor :report_author_name, :book, :publisher, :genre, :characters, :plot_points, :evaluation

  def initialize
    @characters = []
    @plot_points = []
  end

  def add_character(character)
    @characters << character
  end

  def add_plot_point(plot_point)
    @plot_points << plot_point
  end

  def print_report(filename)
    # Your job is to complete this method!
  end
end

class Book
  attr_reader :title, :author, :number_of_pages

  def initialize(title, author, number_of_pages)
    @title = title
    @author = author
    @number_of_pages = number_of_pages
  end
end

class Publisher
  attr_reader :name, :location, :year_published

  def initialize(name, location, year_published)
    @name = name
    @location = location
    @year_published = year_published
  end
end

class Genre
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Character
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class PlotPoint
  attr_reader :detail

  def initialize(detail)
    @detail = detail
  end
end

class Evaluation
  attr_reader :recommend, :review

  def initialize(recommend, review)
    @recommend = recommend
    @review = review
  end
end
