# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create :email => 'mary@example.com', :password => 'guessit', :password_confirmation => 'guessit'

Category.create([
{ :name => 'Programming' },
{ :name =>'Event' },
{ :name => 'Travel' },
{ :name => 'Music' },
{ :name => 'TV' }
])

user.articles.create :title => 'Advanced Active Record',
  :body => 'Models need to relate to each other. In the real world, ..',
  :published_at => Date.today

user.articles.create :title => 'One-to-many associations',
  :body => "One-to-many associations describe a pattern ..",
  :published_at => Date.today

user.articles.create :title => 'Associations',
  :body => "Active Record makes working with associations easy..",
  :published_at => Date.today

#Article.create([
#{ :title => 'RailsConf', :body => 'RailsConf is the official gathering for Rails deveplopers..' },
#{ :title =>'Introduction to SQL', :body => 'SQL stands for Structured Query Language, ..' },
#{ :title => 'Introduction to Active Record', :body => "Active Record is Rail's default ORM.." },
#{ :title => 'RubyConf 2010', :body => 'The annual RubyConf will take place in..' },
#{ :title => 'Rails Pub Nite', :body => 'Rails Pub Nite is every 3rd Monday of each month, except in December.' }
#])