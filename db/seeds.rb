# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tennant.create(first_name: "John", last_name: "Adams", email: "john@gmail.com", password: "johnny1")
Tennant.create(first_name: "Calvin", last_name: "Coolidge", email: "calvin@nycda.com", password: "17calvin")
Tennant.create(first_name: "James", last_name: "Madison", email: "james@gmail.com", password: "123jim456")
Tennant.create(first_name: "Franklin", last_name: "Pierce", email: "frank@wh.org", password: "frank25")
Tennant.create(first_name: "William", last_name: "Harrison", email: "will18@yahoo.com", password: "whwill")

Property.create(address: "4 Yawkey Way", city: "Boston", state: "MA", zip: "02215", montly_rent: "1450", bedrooms: "2", bathrooms: "1", square_feet: "1075", description: "Right in the heart of Boston. This nice two bedroom is located on a quiet cul-de-sac off N. Dean Rd. just south of University Blvd. It includes ceramic tile throughout, vaulted ceilings, full size washer/dryer hookups, a patio in the back and off street parking. One pet under 10 lbs. Please call for an appointment to view this home.", pet_policy: "One pet under 10 pounds", security_deposit: "1400", application_fee: "40", date_available: "2017-02-01" )
Property.create(address: "1600 Pennsylvania Ave", city: "Washington", state: "DC", zip: "20500", montly_rent: "1200", bedrooms: "3", bathrooms: "2",  square_feet: "1240", description: "Property includes a very spacious split floor plan with high cathedral ceilings throughout, formal dining, big eat-in kitchen with granite counters, breakfast nook and stainless appliances, a great master suite with tray ceiling, pool view, his/her sinks, big garden tub and two walk-in closets, a large family room with built in shelving, full size washer/dryer hookups.", pet_policy: "No cats allowed", security_deposit: "1300", application_fee: "40", date_available: "2017-01-01" )
Property.create(address: "501 Main St", city: "Kaysville", state: "UT", zip: "84037", montly_rent: "1150", bedrooms: "4", bathrooms: "2", square_feet: "2300", description:"This is a 3 bedroom 1 bath property that features vaulted ceilings and plant/decoration shelves throughout, living room/dining combo, family room, kitchen with breakfast bar, spacious master bedroom with walk-in closet, ceiling fans throughout, tile floors throughout (carpet in bedrooms).", pet_policy: "No pets allowed", security_deposit: "1000", application_fee: "40", date_available: "2017-01-23" )
Property.create(address: "590 E 2205 S", city: "Salt Lake City", state: "UT", zip: "84014", montly_rent: "1250", bedrooms: "4", bathrooms: "2", square_feet: "2055", description: "This is a beautifully remodeled 4 bedroom, 2 bath home. Centrally located within 10 minutes from downtown. This home includes a gourmet kitchen with stainless steel appliances /refrigerator, granite counter-tops, a guest bath w/pedestal sink, hardwood floors, ceiling fans, and berber carpet in the bedrooms.", pet_policy: "Dogs ok with additional pet deposit", security_deposit: "1200", application_fee: "40", date_available: "2017-02-01" )
Property.create(address: "350 Pheasant Run Dr", city: "Morgan", state: "UT", zip: "84234", montly_rent: "1300", bedrooms: "4", bathrooms: "2", square_feet: "1965", description: "This is an updated 4 bedroom, 2 bath in the heart of SLC, located off Silver Star Road and convenient to local schools, shopping and dining. This property features updated ceramic tile throughout, spacious living room, split floor plan, nicely equipped kitchen with tile, washer/dryer hookups, large screen patio, spacious backyard with fence and much more.", pet_policy: "No pets allowed", security_deposit: "1300", application_fee: "40", date_available: "2017-03-01" )

Landlord.create(email: "brad@gmail.com", password: "123456")
