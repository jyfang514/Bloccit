require 'faker'

# Create Posts
50.times do
  Post.create!(
    title:  Faker::Lorem.sentence,
    body:   Faker::Lorem.paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
  )
end

<<<<<<< HEAD
unless Post.exists?(title: 'This is different')
  Post.create!(
    title: "This is different",
    body: "It sure is"
  )
end
=======
Post.create!(
  title: 'This is Bloc',
  body: 'It is not easy'
)
>>>>>>> cp32-assignment

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
