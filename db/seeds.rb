# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Board.destroy_all
User.destroy_all
Notecard.destroy_all
Comment.destroy_all

boards = Board.create ([
  {title: "Update Username", user: users[0]},
  {title: ""}

users = User.create ([
  {email: "one@one.com", password: oneoneone},
  {email: "two@two.com", password: twotwotwo}
  ])
