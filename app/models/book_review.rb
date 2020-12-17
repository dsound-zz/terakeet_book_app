class BookReview < ApplicationRecord

    belongs_to :book 

    validates_presence_of :rating, :book_id 
end
