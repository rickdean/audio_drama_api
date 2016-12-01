# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Show.destroy_all

Show.create!([{
  title: 'Ant-Man',
  genre: 'Fantasy',
  description: 'A man is the size of an ant',
  release_date: '8/4/2016',
  episodes: 10,
  rss: 'http:kkkkkk',
  site:'http:kkkkkk',
  voice_artist_string:'Paul Rudd'
},

{
  title: 'Ant-Man 2',
  genre: 'Fantasy',
  description: 'A man is the size of an ant',
  release_date: '8/4/2016',
  episodes: 10,
  rss: 'http:kkkkkk',
  site:'http:kkkkkk',
  voice_artist_string:'Paul Rudd'
},
{
  title: 'Ant-Man 2',
  genre: 'Fantasy',
  description: 'A man is the size of an ant',
  release_date: '8/4/2016',
  episodes: 10,
  rss: 'http:kkkkkk',
  site:'http:kkkkkk',
  voice_artist_string:'Paul Rudd'
}])

p "Created #{Show.count} shows"
