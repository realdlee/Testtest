class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :description
      t.decimal :price
      t.datetime :expiry
      t.string :url
      t.boolean :confirmed, :default => false
      t.references :merchant
      t.timestamps
    end
  end
end
