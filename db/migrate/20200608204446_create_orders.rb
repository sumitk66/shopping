class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :item_id
      t.float :unit_price
      t.float :total_price

      t.timestamps
    end
  end
end
