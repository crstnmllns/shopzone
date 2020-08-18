class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :salesprice
      t.integer :pricecost
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
