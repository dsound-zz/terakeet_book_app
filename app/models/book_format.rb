class BookFormat < ApplicationRecord

    belongs_to :book 
    belongs_to :book_format_type

    validates_presence_of :book_id, :book_format_type_id 
    
end
