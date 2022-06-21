movies = [
    {
      "id" => 70111470,
      "title" => "Die Hard",
      "boxart" => "http://cdn-0.nflximg.com/images/2891/DieHard.jpg",
      "uri" => "http://api.netflix.com/catalog/titles/movies/70111470",
      "rating" => 5.0,
      "bookmark" => []
    },
    {
      "id" => 654356453,
      "title" => "Bad Boys",
      "boxart" => "http://cdn-0.nflximg.com/images/2891/BadBoys.jpg",
      "uri" => "http://api.netflix.com/catalog/titles/movies/70111470",
      "rating" => 2.0,
      "bookmark" => [{ "id" => 432534, "time" => 65876586 }]
    },
    {
      "id" => 65432445,
      "title" => "The Chamber",
      "boxart" => "http://cdn-0.nflximg.com/images/2891/TheChamber.jpg",
      "uri" => "http://api.netflix.com/catalog/titles/movies/70111470",
      "rating" => 4.0,
      "bookmark" => []
    },
    {
      "id" => 675465,
      "title" => "Fracture",
      "boxart" => "http://cdn-0.nflximg.com/images/2891/Fracture.jpg",
      "uri" => "http://api.netflix.com/catalog/titles/movies/70111470",
      "rating" => 3.0,
      "bookmark" => [{ "id" => 432534, "time" => 65876586 }]
    }
  ]



great_movies = []

i = 0
while i < movies.size
    if movies[i]["rating"] > 3
        great_movies << {"title" => movies[i]["title"], "boxart" => movies[i]["boxart"]}
    end
    i += 1
end

p great_movies
