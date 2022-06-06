#Ruby

simplified_movies = []
i = 0

while i < movie_lists.size
    x = 0

    while x < movie_lists[i].size
        
        temp = []
        y = 0

        while y < (movie_lists[i]["videos"][x]["boxarts"]).size
            
            temp << {"size" => movie_lists[i]["videos"][x]["boxarts"][y]["width"], 
                      "url" => movie_lists[i]["videos"][x]["boxarts"][y]["url"],
                    "title" => movie_lists[i]["videos"][x]["title"],
                       "id" => movie_lists[i]["videos"][x]["id"]
                    }
            
            y += 1
        end
  
        temp.sort_by! { |t| t["size"]}
        simplified_movies << {"id" => temp[0]["id"], "title" => temp[0]["title"], "boxarts" => temp[0]["url"]}
   
        x += 1
    end
   
    i += 1
end

puts simplified_movies




# {"id"=>70111470, "title"=>"Die Hard", "boxarts"=>"http://cdn-0.nflximg.com/images/2891/DieHard150.jpg"}
# {"id"=>654356453, "title"=>"Bad Boys", "boxarts"=>"http://cdn-0.nflximg.com/images/2891/BadBoys140.jpg"}
# {"id"=>65432445, "title"=>"The Chamber", "boxarts"=>"http://cdn-0.nflximg.com/images/2891/TheChamber130.jpg"}
# {"id"=>675465, "title"=>"Fracture", "boxarts"=>"http://cdn-0.nflximg.com/images/2891/Fracture120.jpg"}
