require "faker"

# 15.times do
#   user = User.new(username: Faker::Internet.username(specifier: 10), user_email: Faker::Internet.email)
#   user.save
# end

50.times do
  tweet = Tweet.new(tweet_text: Faker::Lorem.sentence(word_count: rand(5..30)), user_id: rand(1..15))
  tweet.save
end
