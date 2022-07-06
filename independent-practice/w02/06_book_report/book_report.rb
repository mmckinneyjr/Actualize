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

    ### Add correct spacing for Reports Author
    def indent_spacing(pre_str, str)
      output_str = "#{pre_str} #{str}"
      output_str2 = "#{pre_str} #{str}"
      spacing = ((50 - output_str.size) / 2)

      spacing.times do
        output_str.prepend(" ")
      end

      if output_str2.size.odd?
        (spacing + 1).times do
          output_str << " "
        end
      else
        spacing.times do
          output_str << " "
        end
      end
      return output_str
    end

    ### Add correct spacing for Reports Author
    publisher_str = "Published By: #{publisher.name}, #{publisher.location}, #{publisher.year_published}"

    def dash_count(pub_str)
      output_str = ""
      pub_str.size.times do
        output_str.prepend("-")
      end
      return output_str
    end

    ### Print Characters
    def print_characters(chars)
      output_str = ""
      chars.each do |char|
        output_str += "* #{char.name}\n"
      end
      return output_str
    end

    ### Print Plots
    def print_plots(plots)
      count_plots = 1
      output_str = ""
      plots.each do |plot|
        output_str += "#{count_plots}. #{plot.detail}\n"
        count_plots += 1
      end
      return output_str
    end

    ### Recommend?
    def recommend_?
      if evaluation.recommend == true
        return "Yes"
      else
        return "No"
      end
    end

    ### String print out
    open(filename, "w") { |f|
      f << "     ****************************************     \n"
      f << "                  My Book Report                  \n"
      f << "#{indent_spacing("By", report_author_name)}\n"
      f << "     ****************************************     \n"
      f << "\n"
      f << "#{indent_spacing("Book Title:", book.title)}\n"
      f << "#{indent_spacing("Author:", book.author)}\n"
      f << "#{indent_spacing("Pages:", book.number_of_pages)}\n"
      f << "#{indent_spacing("Book Genre:", genre.name)}\n"
      f << "\n"
      f << "#{dash_count(publisher_str)}\n"
      f << "#{publisher_str}\n"
      f << "#{dash_count(publisher_str)}\n"
      f << "\n"
      f << "Characters:\n"
      f << "#{print_characters(characters)}\n"
      f << "Plot:\n"
      f << "#{print_plots(plot_points)}\n"
      f << "~~~~~~~~~~~~~~~ MY OPINION ~~~~~~~~~~~~~~~\n"
      f << "\n"
      f << "Do you like this book? #{recommend_?}.\n"
      f << "\n"
      f << "#{evaluation.review.gsub('\n', "")}"
    }
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
