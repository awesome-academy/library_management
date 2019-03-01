class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :status, default: 0, null:false
      t.datetime :from_day
      t.datetime :to_day

      t.timestamps
    end
  end
end
