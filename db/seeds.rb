# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |project|
  Project.create!(
    name: "Project Seed #{project}",
    description: "If everything I did failed - which it doesn't, it actually succeeds - just the fact that I'm willing to fail is an inspiration. People are so scared to lose that they don't even try. Like, one thing people can't say is that I'm not trying, and I'm not trying my hardest, and I'm not trying to do the best way I know how."
  )
end

puts "----- Seeded 10 Projects ------"

3.times do |site|
  Site.create!(
    name: "Site First Project - #{site}",
    description: "I always felt like I could do anything. That’s the main thing people are controlled by! Thoughts- their perception of themselves! They're slowed down by their perception of themselves. If you're taught you can’t do anything, you won’t do anything. I was taught I could do everything.",
    image: "https://via.placeholder.com/400x300",
    project_id: Project.first.id
  )
end

puts "----- Seeded First Sites ------"

3.times do |site|
  Site.create!(
    name: "Site Last Project - #{site}",
    description: "There’s nothing I really wanted to do in life that I wasn’t able to get good at. That’s my skill. I’m not really specifically talented at anything except for the ability to learn. That’s what I do. That’s what I’m here for. Don’t be afraid to be wrong because you can’t learn anything from a compliment.",
    image: "https://via.placeholder.com/400x300",
    project_id: Project.last.id
  )
end

puts "----- Seeded Last Sites ------"
