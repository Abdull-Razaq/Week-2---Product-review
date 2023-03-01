class User < ActiveRecord::Base

    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        self.reviews.order(:star_rating).last.product
    end

    def remove_review(product)
       reviews.delete.where(reviews.user_id == user_id && reviews.product_id == product_id) 
    end

end