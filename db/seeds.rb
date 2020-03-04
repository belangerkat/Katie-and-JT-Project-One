Artist.destroy_all
Genre.destroy_all

pop = Genre.create(genre_name: "Pop")
rock = Genre.create(genre_name: "Rock")
dance = Genre.create(genre_name: "Dance")
hip_hop_rap = Genre.create(genre_name: "Hip-Hop/Rap")
country = Genre.create(genre_name: "Country")


maroon5 = Artist.create(name: "Maroon 5", genre: pop)
lady_gaga = Artist.create(name: "Lady Gaga", genre: pop)
christina_aguilera = Artist.create(name: "Christina Aguilera", genre: pop)
bruno_mars = Artist.create(name: "Bruno Mars", genre: pop)
pearl_jam = Artist.create(name: "Pearl Jam", genre: rock)
pink_floyd = Artist.create(name: "Pink Floyd", genre: rock)
nirvana = Artist.create(name: "Nirvana", genre: rock)
ac_dc = Artist.create(name: "AC/DC", genre: rock)
led_zeppelin = Artist.create(name: "Led Zeppelin", genre: rock)
calvin_harris = Artist.create(name: "Calvin Harris", genre: dance)
kaskade = Artist.create(name: "Kaskade", genre: dance)
flume = Artist.create(name: "Flume", genre: dance)
skrillex = Artist.create(name: "Skrillex", genre: dance)
above_and_beyond = Artist.create(name: "Above & Beyond", genre: dance)
lil_wayne = Artist.create(name: "Lil Wayne", genre: hip_hop_rap)
mac_miller = Artist.create(name: "Mac Miller", genre: hip_hop_rap)
two_chainz = Artist.create(name: "2 Chainz", genre: hip_hop_rap)
eminem = Artist.create(name: "Eminem", genre: hip_hop_rap)
travis_scott = Artist.create(name: "Travis Scott", genre: hip_hop_rap)
dixie_chicks = Artist.create(name: "Dixie Chicks", genre: country)
johnny_cash = Artist.create(name: "Johnny Cash", genre: country)
dolly_parton = Artist.create(name: "Dolly Parton", genre: country)
keith_urban = Artist.create(name: "Keith Urban", genre: country)
kenny_chesney = Artist.create(name: "Kenny Chesney", genre: country)




