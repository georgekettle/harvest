class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_cents
      t.string :unit_type
      t.integer :stock
      t.references :producer, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
