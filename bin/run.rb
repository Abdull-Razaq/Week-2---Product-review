require_relative '../config/environment'

product1= Product.create(name: "Mercedes G-Wagon")
product2= Product.create(name: "Audi Q7")
product3= Product.create(name: "VW Tiguan")
product4= Product.create(name: "Lexus LX 600")
product5= Product.create(name: "Ford")

user1 = User.create(name: "Saka")
user2 = User.create(name: "Martinelli")
user3 = User.create(name: "Nketiah")
user4 = User.create(name: "Saliba")
user5 = User.create(name: "Ben White")


review = Review.create(
  comment: "Play False 9, Arteta- Trossard",
  star_rating: 20,
  product_id: product1.id,
  user_id: user1.id
)