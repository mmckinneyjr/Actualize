require "http"

class ExamplePagesController < ApplicationController
  def hello_method
    render json: { message: "hello" }
  end

  def image_method
    render html: 'This is my image<br><img src="https://anyonecanlearntocode.com/assets/actualize-logo-7cfc296a2f85a02cf29c8ee89707b1da416d72b05fe1d582c9eb9a2888d7dc18.png" height="100px">'.html_safe
  end

  def array_method
    my_array = ["one", "two", "three", "four", "five"]
    final = []

    render plain: my_array.map { |n| "Num: #{n} " }
  end

  def my_method
    items = [
      { id: 1, body: "foo" },
      { id: 2, body: "bar" },
      { id: 3, body: "foobar" },
    ]

    render plain: items.map { |i| "#{i[:id]}:#{i[:body]} " }
  end

  def my_method2
    fruits = [
      { "name" => "apple", "color" => "red" },
      { "name" => "banana", "color" => "yellow" },
      { "name" => "grape", "color" => "purple" },
    ]

    render plain: "#{fruits.map { |f| [f["name"], f["color"]] }.to_h}"
  end
end
