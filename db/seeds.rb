# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic: #{topic}"
  )
end

puts "3 topics created"


10.times do |blog|
 Blog.create!(
   title: "My Blog Post #{blog}",
   body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget malesuada nisi. Curabitur condimentum, sem ac fermentum condimentum, erat massa cursus metus, nec gravida enim lectus ornare sapien. Sed sit amet justo vulputate nibh tincidunt ultricies eu ut enim. 

    Etiam lacus elit, pharetra sodales aliquam in, mollis eu tortor. Fusce lacinia quis mauris vel varius. Nam condimentum ornare arcu, sed lacinia risus ultricies quis. Nam varius sagittis orci ut sodales.",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

3.times do |skill|
  Skill.create!(
    title: "HTML/CSS #{skill}",
    percent_utilized: 50
  )
end

puts "3 skills created"

3.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby",
    body: "Fusce lacinia quis mauris vel varius. Nam condimentum ornare arcu.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

3.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "HTML, CSS, JavaScript",
    body: "Fusce lacinia quis mauris vel varius. Nam condimentum ornare arcu.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"