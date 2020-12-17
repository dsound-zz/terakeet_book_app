class CreateBookReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :book_reviews do |t|
      t.references :book
      t.integer :rating

      t.timestamps
    end
  end
end
