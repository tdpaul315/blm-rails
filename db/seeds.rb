# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    User.create(name: Faker::Name.name, username: Faker::Internet.username, email: Faker::Internet.email, password: "password", admin: false )
end 


    Movement.create(name: "BLM", yr_started: 2013, description: "BLM is a decentralized political and social movement advocating for non-violent civil disobedience in protest against incidents of police brutality and all racially motivated violence against black people. While there are specific organizations like the Black Lives Matter Global Network that label themselves simply as 'Black Lives Matter', the Black Lives Matter movement is comprised of a broad array of people and organizations. The slogan 'Black Lives Matter' itself remains untrademarked by any group. The broader movement and its related organizations typically advocate against police violence towards black people as well as for various other policy changes considered to be related to black liberation.") 
    Movement.create(name: "We Love Trees", yr_started: 1997, description: "WLT is a movement driven by individuals who have a passion and genuine love for saving our trees. The movement also focuses on educating people around the globe about the importance of trees and why we need them.")
    Movement.create(name: "Make Wine at Work a Thing", yr_started: 2020, description: "In a world plagued with COVID-19, many of us are forced to work at home. The 'Make Wine at Work a Thing' movement is up and coming but its popularity has grown exponentially in a matter of months. We focus on improving work performance by implementing a two glass of wine max while working. Recent studies have shown employees are far more engaged and happy during the day.")
    Movement.create(name: "Help Save the Tigers", yr_started: 1991, description: "HSTT was created to bring awareness to the near extinction of our world's tigers. It is our mission to save a tiger a day")
    Movement.create(name: "Legalize Recreational Use in All 50 States", yr_started: 2017, description: "This movement is our most popular movement, and has several organized protests every month. Our focus is to educate the importance of marijuana use and how much it can boost the economy, through a special tax." )


    Protest.create(name: "Breonna Taylor Deserves Better", location: "2212 Arrest the Cops St. Raleigh, NC 27610", date: Faker::Time.forward(days: 60,  period: :morning, format: :long), user_id: 1, movement_id: 1)
    Protest.create(name: "I Can't Breathe", location: "1234 BLM Ave. Atlanta, GA 30318", date: Faker::Time.forward(days: 60,  period: :morning, format: :long), user_id: 2, movement_id: 1)
    Protest.create(name: "Trees Have Feelings Too", location: "3215 Tree St. Los Angeles, CA 90020", date: Faker::Time.forward(days: 45,  period: :morning, format: :long), user_id: 3, movement_id: 2)
    Protest.create(name: "Cut the Grass, Not Our Trees ", location: "141-12th St. New York, NY 10001", date: Faker::Time.forward(days: 45,  period: :morning, format: :long), user_id: 4, movement_id: 2)
    Protest.create(name: "Wine is Fine", location: "1560 Winos Rd. Austin, TX", date: Faker::Time.forward(days: 30,  period: :morning, format: :long), user_id: 5, movement_id: 3)
    Protest.create(name: "I Work Better with Wine", location: "625 Redwine Way. Nashville, TN 27189", date: Faker::Time.forward(days: 30,  period: :morning, format: :long), user_id: 1, movement_id: 3)
    Protest.create(name: "Tigers are Grrrreat", location: "2000 FeelingTigerish Rd. Chicago, IL 32331", date: Faker::Time.forward(days: 60,  period: :morning, format: :long), user_id: 2, movement_id: 4)
    Protest.create(name: "Save the Stripes", location: "1420 Tiger Hwy. St. Louis, MO 40994", date: Faker::Time.forward(days: 60,  period: :morning, format: :long), user_id: 3, movement_id: 4)
    Protest.create(name: "Cannabis is our Friend", location: "91-200th Snoop Dogg Ave. Denver, CO 22332", date: Faker::Time.forward(days: 60,  period: :morning, format: :long), user_id: 4, movement_id: 5)
    Protest.create(name: "Green Peace", location: "6766 Mary Jane Rd. Miami, FL 32322", date: Faker::Time.forward(days: 60,  period: :morning, format: :long), user_id: 5, movement_id: 5)
