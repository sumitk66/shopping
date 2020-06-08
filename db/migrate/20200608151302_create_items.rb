class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :tags
      t.string :availability
      t.integer :availability_count
      t.float :price

      t.timestamps
    end
  end
end
