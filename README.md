### Author 
**ABDIRIZAK MOHAMED**

## ERD 
source = ./assets/erd_img.png

For this assignment, we'll be working with an e-commerce domain. We'll be focusing on the product reviews.

We have three models: User, Review, and Product.

For our purposes;
 *A Product has many Users, a User has many Products*
 *A Review belongs to a User and to a Product.*

  *Product - User is a many-to-many relationship.*

Topics
This assignment focused on the following topics

  ## Active Record Migrations
  ## Active Record Associations
  ## Class and Instance Methods
  ## Active Record QueryingProject Setup

### DELIVERABLES
Create the following classes and their respective methods.

Set up your application so it runs from a configured run file. 

Create instances of the classes on the run file and try out the methods you just created.

Use the notation # for instance methods, and .(dot) for class methods.

Feel free to build out any helper methods if needed.

### Migrations

Before working on the rest of the deliverables, you will need to create a migration for the reviews table.

 
  A Review belongs to a Product, and a Review also belongs to a User. In your migration, create any columns your reviews table will need to establish these relationships.
  The reviews table should also have:
  *A star_rating column that stores an integer.*
  *A comment column that stores a string.*
 
After creating and running your migration, create your Review class, and use the seeds.rb file to create Review instances so you can test your code.

### Object Association Methods

Use Active Record association macros and Active Record query methods where appropriate (i.e. has_many, has_many through, and belongs_to).

 

## Review
Returns the User instance for this Review
Returns the Product instance for this Review
  *Review#user*
  *Review#product*

## Product
  Product#reviews
Returns a collection of all the Reviews for the Product
  Product#users
Returns a collection of all the Users who reviewed the Product
 

## User
  User#reviews
Returns a collection of all the Reviews that the User has given
  User#products
Returns a collection of all the Products that the User has reviewed
 

Use the rake console and check that these methods work before proceeding. For example, you should be able to call User.first.products and see a list of the products for the first user in the database based on your seed data, and Review.first.user should return the user for the first review in the database.


### Aggregate and Association Methods
## Review
  Review#print_review
This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
 
## Product
  Product#leave_review(user, star_rating, comment)
Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
  Product#print_all_reviews
This should puts in the terminal a string representing each review for this product
Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
  Product#average_rating
Returns a float representing the average star rating for all reviews for this product
 
## User
  User#favorite_product
Returns the product instance that has the highest star rating from this user
  User#remove_reviews(product)
Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product.
You will have to delete any rows from the reviews table associated with this user and the product.
