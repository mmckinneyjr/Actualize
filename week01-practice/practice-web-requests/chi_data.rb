require "http"

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")

i = 0
while i < response.parse.size
  pp response.parse[i]["name"]

  i += 1
end
