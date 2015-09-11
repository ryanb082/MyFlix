# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




Video.create(title: 'Family Guy', 
  description: 'Seth McFarlene animation show about Peter Griffin.',
  small_cover_url: '/tmp/family_guy.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category_id: 1)

Video.create(title: 'Family Guy',
  description: 'Seth McFarlene animation show about Peter Griffin.',
  small_cover_url: '/tmp/family_guy.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category_id: 2)

Video.create(title: 'South Park',
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category_id: 1)

Video.create(title: 'South Park', 
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg', 
  category_id: 2)

Video.create(title: 'South Park', 
  description: 'South Park based on a cartoon in Dever',
  small_cover_url: '/tmp/south_park.jpg', 
  large_cover_url: '/tmp/monk_large.jpg',
  category_id: 1)

