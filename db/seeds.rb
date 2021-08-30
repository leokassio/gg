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

Tournament.create([
    {name: "Blast Pro Series", country: "EU"}
])

Team.create([
    {name: "Furia", country: "BR"},
    {name: "Spirit", country: "RU"},
    {name: "G2", country: "EU"},
    {name: "Team One", country: "BR"},
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

team = Team.find_by(name: "G2")
Player.create([
    {nickname: "JaCkz", first_name: "Audric", team: team},
    {nickname: "NiKo", first_name: "Nikola", team: team},
    {nickname: "huNter-", first_name: "Nemanja", team: team},
    {nickname: "AmaNEk", first_name: "François", team: team},
    {nickname: "nexa", first_name: "Nemanja", team: team}
])

team = Team.find_by(name: "Team One")
Player.create([
    {nickname: "Maluk3", first_name: "Pedro", team: team},
    {nickname: "prt", first_name: "Matheus", team: team},
    {nickname: "malbsMd", first_name: "Mario", team: team},
    {nickname: "pesadelo", first_name: "Matheus", team: team},
    {nickname: "xns", first_name: "Enzo", team: team}
])


tournament = Tournament.find_by(name: "ESL Pro League Season 14")
t1 = Team.find_by(name: "Furia")
t2 = Team.find_by(name: "Team One")
t3 = Team.find_by(name: "G2")
Match.create([ {tournament: tournament, teams: [t1, t2]} ])
Match.create([ {tournament: tournament, teams: [t1, t3]} ])

tournament = Tournament.find_by(name: "Blast Pro Series")
t1 = Team.find_by(name: "Team One")
t2 = Team.find_by(name: "G2")
Match.create([ {tournament: tournament, teams: [t1, t2]} ])

