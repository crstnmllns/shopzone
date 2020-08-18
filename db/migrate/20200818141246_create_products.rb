class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :stock
      t.text :description
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
