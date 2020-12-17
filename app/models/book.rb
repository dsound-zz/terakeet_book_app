class Book < ApplicationRecord

    belongs_to :publisher 
    belongs_to :author
    has_many :book_formats 
    has_many :book_format_types, through: :book_formats 

    validates_presence_of :title, :publisher_id, :author_id
    

    def format_types
        byebug
        self.book_format_types.map do |book_format_type| 
            book_format_type.each do |book_format| 
                puts book_format.name 
            end
        end
    end

    def show_author
        first_name = self.author.first_name 
        last_name = self.author.last_name
        first_name + ' ' + last_name
    end

    def average_reviews 
        result = nil
        reviews = BookReview.where(book_id: self.id).map { |book_reviews| book_reviews.rating }
        if reviews.length == 0
            result = "No reviews yet"
        else 
            mean = reviews.reduce(0.0) { |sum, el| sum + el } / reviews.size
            result = mean.round
        end
        result 
    end

    def self.search(query, options={titles_only: false, book_format_type_id: nil, book_format_type: nil}) 
        publisher_names = Publisher.pluck(:name)
        author_last_names = Author.pluck(:last_name)
        book_titles = Book.pluck(:title)

        case options 
        when options[:title_only] = true
            book_titles(query, book_titles) 
        when options[:book_format_type_id]  
            book_format_type(options[:book_format_type_id])
        else   
            if publisher_names.include?(query) 
                query 
            elsif 
                author_last_names.include?(query)
                    query 
            elsif 
                book_titles.each do |book_title|  
                    if book_title.include?(query)
                        return query
                    else 
                        return 
                    end
                end
                
            else 
                return
            end
        end

    end

    private 

    def book_titles(query, titles) 
        if titles.inlcude?(query) 
            return query 
        else
            return "Not Found"
        end
    end

    def book_format_type(type_id)
        found_book_formats = []
        book_formats = BookFormatType.pluck(:name)
        Book.all.map do |b| 
            found_book_formats = b.book_format_types.select do |bft| 
                book_formats.include?(bft) 
            end    
        end
        found_book_formats
    end

end
