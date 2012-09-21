class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :role
      t.decimal :money
      t.boolean :confirmed, :default => false
      t.references :user
      t.references :deal
      t.timestamps
    end
  end
end
