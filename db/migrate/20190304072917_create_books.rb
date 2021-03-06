class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :category_id
      t.integer :publisher_id
      t.string :name
      t.string :content
      t.integer :quantity_of_pages
      t.integer :publishing_year
      t.integer :quantity_of_books
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
