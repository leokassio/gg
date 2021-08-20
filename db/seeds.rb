# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Tournament.create([
    {name: "ESL Pro League Season 14", country: "EU"}
])

Team.create([
    {name: "Furia", country: "BR"}, 
    {name: "Team One", country: "BR"}, 
    {name: "G2", country: "EU"}, 
    {name: "Spirit", country: "RU"}
])

team = Team.find_by(name: "Furia")
Player.create([
    {nickname: "arT", first_name: "Andrei", team: team},
    {nickname: "yuurih", first_name: "Yuri", team: team},
    {nickname: "VINI", first_name: "Vinicius", team: team},
    {nickname: "KSCERATO", first_name: "Kaike", team: team},
    {nickname: "honda", first_name: "Lucas", team: team}
])

team = Team.find_by(name: "Spirit")
Player.create([
    {nickname: "chopper", first_name: "Leonid", team: team},
    {nickname: "mir", first_name: "Nikolay", team: team},
    {nickname: "sdy", first_name: "Viktor", team: team},
    {nickname: "degster", first_name: "Abdul", team: team},
    {nickname: "magixx", first_name: "Boris", team: team}
])