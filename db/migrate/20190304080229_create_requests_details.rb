class CreateRequestsDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :requests_details do |t|
      t.integer :requests_id
      t.integer :book_id
      t.integer :quantity
      t.integer :status, default: 0, null:false

      t.timestamps
    end
  end
end
