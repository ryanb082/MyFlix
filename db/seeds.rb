# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Video.create(title: 'Fellowship Of The Ring', description: 'Story about a hobbit or something like that.',
  small_cover_url: '/tmp/fellowship.jpg', large_cover_url: '/tmp/large.jpg')

Video.create(title: 'Family Guy', description: 'Seth McFarlene animation show about Peter Griffin.',
  small_cover_url: '/tmp/family_guy.jpg', large_cover_url: '/tmp/large.jpg')
