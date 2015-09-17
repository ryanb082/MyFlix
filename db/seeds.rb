# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
comedy = Category.create!(name: 'Comedy')
animation = Category.create!(name: 'Animation')
horror = Category.create!(name: 'Horror')



movie = Video.create!(title: 'Family Guy', 
  description: 'Seth McFarlene animation show about Peter Griffin.',
  small_cover_url: '/tmp/family_guy.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category: comedy 
)

Video.create!(title: 'Family Guy',
  description: 'Seth McFarlene animation show about Peter Griffin.',
  small_cover_url: '/tmp/family_guy.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category: animation
)

south_park = Video.create!(title: 'South Park',
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category: comedy
)

Video.create!(title: 'South Park', 
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg', 
  category: animation
)

Video.create!(title: 'South Park', 
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category: animation
)

Video.create!(title: 'South Park', 
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg', 
  category: comedy
)

Video.create!(title: 'South Park', 
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg', 
  category: animation
)

ryan = User.create!(full_name: 'Ryan Bent', password: 'password', email: 'ryan@example.com')

Review.create!(user: ryan, video: south_park, rating: 3, content: 'Great show!')

Review.create!(user: ryan, video: south_park, rating: 1, content: 'Show was so so')

