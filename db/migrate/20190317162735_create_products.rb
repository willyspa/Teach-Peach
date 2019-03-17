class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :brand
      t.decimal :price
      t.integer :quantity
      t.string :reference

      t.timestamps
    end
  end
end
