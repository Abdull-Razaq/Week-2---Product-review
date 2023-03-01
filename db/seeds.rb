# Add seed data in this file

puts "Seeding users..."
user1 = User.create(name: "Saka")
user2 = User.create(name: "Martinelli")
user3 = User.create(name: "Nketiah")
user4 = User.create(name: "Saliba")
user5 = User.create(name: "Ben White")


puts "Seeding products..."
product1= Product.create(name: "Mercedes G-Wagon", price: 80,000)
product2= Product.create(name: "Audi Q7", price: 65,000)
product3= Product.create(name: "VW Tiguan", price: 60,000)
product4= Product.create(name: "Lexus LX 600", price: 70,000)
product5= Product.create(name: "Ford", price: 45,000)


puts "Seeding reviews..."
Review.create(star_rating: 4, comment: "Average", user_id: user1.id, product_id: product1.id)
Review.create(star_rating: 3, comment: "Great", user_id: user2.id, product_id: product2.id)
Review.create(star_rating: 1, comment: "Bad", user_id: user3.id, product_id: product3.id)
Review.create(star_rating: 2, comment: "Bad", user_id: user2.id, product_id: product4.id)
Review.create(star_rating: 5, comment: "Wow", user_id: user3.id, product_id: product5.id)

puts "Done seeding"