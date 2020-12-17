class CreateBookFormats < ActiveRecord::Migration[6.0]
  def change
    create_table :book_formats do |t|
      t.references :book
      t.references :book_format_type

      t.timestamps
    end
  end
end
