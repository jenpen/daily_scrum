# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Notecard.destroy_all
Comment.destroy_all

users = User.create! ([
  {email: 'one@one.com', password: "oneoneone"},
  {email: 'two@two.com', password: "twotwotwo"}
  ])

boards = Board.create! ([
  {title: 'Update the Login Page'},
  {title: 'Add color-coded profiles to Galaxy Game'}
])

notecards = Notecard.create! ([

  # Notecard 0
  {task: 'Update views',
  date: "10/18/16",
  status: 'done',
  accomplished: 'Updated the home view with revisions to functionality allowing users to login.',
  to_do: 'Update css to match look and feel of page to design comp',
  roadblock: 'none',
  user: users[0],
  board: boards[0]},

  # Notecard 1
  {task: 'Resolve tickets in JIRA',
  date: "10/18/16",
  status: 'done',
  accomplished: 'Reviewed and resolved 14 tickets in JIRA',
  to_do: 'none',
  roadblock: 'Awaiting QA review of resolved tickets',
  user: users[1],
  board: boards[0]},

  # Notecard 2
  {task: 'Set up dev environment and pull assets for avatars',
  date: "10/18/16",
  status: 'in progress',
  accomplished: 'Set up dev environment',
  to_do: 'Pull assets from PSD',
  roadblock: 'Need some layers saved to web quality',
  user: users[0],
  board: boards[1]},

  # Notecard 3
  {task: 'Create Google Analytics tags for implementation on site',
  date: "10/18/16",
  status: 'in progress',
  accomplished: 'Identified best method for implementing tags on mapbox data',
  to_do: 'Insert tags into code',
  roadblock: 'none',
  user: users[0],
  board: boards[1]},

  # Notecard 4
  {task: 'Do fun things with game logic',
  date: "10/18/16",
  status: 'in progress',
  accomplished: 'Made one fun thing happen with game logic',
  to_do: 'Update with two more fun things',
  roadblock: 'Have not identified second fun thing or third fun thing',
  user: users[1],
  board: boards[1]}
  ])

  comments = Comment.create!([
    {body: "Production Designer is resourced to assist with revising the layers", user: users[1], notecard: notecards[2]}
    ])
