# Seed data for Clients
client1 = Client.create(name: "Client 1", address: "Address 1", phone: "123456789", rut: "123456789-0")
client2 = Client.create(name: "Client 2", address: "Address 2", phone: "987654321", rut: "987654321-0")

# Seed data for Routes
route1 = Route.create(name: "Route 1")
route2 = Route.create(name: "Route 2")

# Seed data for Trips
trip1 = Trip.create(name: "Trip 1", route: route1)
trip2 = Trip.create(name: "Trip 2", route: route2)

# Seed data for Deliveries
delivery1 = Delivery.create(name: "Delivery 1", trip: trip1, client: client1)
delivery2 = Delivery.create(name: "Delivery 2", trip: trip1, client: client2)
delivery3 = Delivery.create(name: "Delivery 3", trip: trip2, client: client1)

# Seed data for Pickups
pickup1 = Pickup.create(name: "Pickup 1", trip: trip1, client: client1)
pickup2 = Pickup.create(name: "Pickup 2", trip: trip1, client: client2)
pickup3 = Pickup.create(name: "Pickup 3", trip: trip2, client: client1)
