# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
r1 = Role.create(salary: 50_000_000, character_name: "Super Woman", movie_id: mean_girls.id, actor_id: lindsay_lohan.id)
r2 = Role.create(salary: 60_000_000, character_name: "Villan", movie_id: mean_girls.id, actor_id: tina_fey.id)
r3 = Role.create(salary: 80_000_000, character_name: "Baby Spice", movie_id: spice_world.id, actor_id: baby_spice.id)
r4 = Role.create(salary: 100_000_000, character_name: "Ginger Spice", movie_id: spice_world.id, actor_id: ginger_spice.id)
r5 = Role.create(salary: 30_000_000, character_name: "Scary Spice", movie_id: spice_world.id, actor_id: scary_spice.id)
r6 = Role.create(salary: 2_000_000, character_name: "Sporty Spice", movie_id: spice_world.id, actor_id: sporty_spice.id)
r7 = Role.create(salary: 10_000_000, character_name: "Posh Spice", movie_id: spice_world.id, actor_id: posh_spice.id)


puts "Seeding done!"