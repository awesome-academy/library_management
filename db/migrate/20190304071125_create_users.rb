class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.datetime :date_of_birth
      t.integer :gender
      t.string :phone
      t.string :address
      t.integer :role, default: 0, null:false

      t.timestamps
    end
  end
end
