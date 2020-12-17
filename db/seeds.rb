# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
Author.destroy_all
Publisher.destroy_all 

Publisher.create!(name: "Pub Company One")
Publisher.create!(name: "Pub Company Two")

Author.create!(first_name: "Demian", last_name: "Sims")
Author.create!(first_name: "Mike", last_name: "Geppert")

Book.create!(title: "Book One", publisher_id: 1, author_id: 1)
Book.create!(title: "Book Two", publisher_id: 1, author_id: 1)
Book.create!(title: "Book Three", publisher_id: 1, author_id: 1)
Book.create!(title: "Book Four", publisher_id: 2, author_id: 2)
Book.create!(title: "Book Five", publisher_id: 2, author_id: 2)
Book.create!(title: "The Garden of Eden", publisher_id: 1, author_id: 1)
Book.create!(title: "The Lost Ones", publisher_id: 1, author_id: 2)

BookFormatType.create!(name: "Hardcover", physical: true)
BookFormatType.create!(name: "Softcover", physical: true)
BookFormatType.create!(name: "Kindle", physical: false)
BookFormatType.create!(name: "PDF", physical: false)

BookFormat.create!(book_id: 1, book_format_type_id: 1)
BookFormat.create!(book_id: 2, book_format_type_id: 1)
BookFormat.create!(book_id: 3, book_format_type_id: 4)

BookReview.create!(book_id: 1, rating: 4)
BookReview.create!(book_id: 2, rating: 3) 
BookReview.create!(book_id: 3, rating: 2)
BookReview.create!(book_id: 3, rating: 4)
BookReview.create!(book_id: 4, rating: 5) 
BookReview.create!(book_id: 5, rating: 3) 
BookReview.create!(book_id: 5, rating: 5) 
BookReview.create!(book_id: 5, rating: 6)