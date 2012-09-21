class AddIndexes < ActiveRecord::Migration
  def up
    add_index :transactions, :deal_id
    add_index :transactions, :user_id
    add_index :deals, :merchant_id
  end

  def down
    remove_index :transactions, :deal_id
    remove_index :transactions, :user_id
    remove_index :deals, :merchant_id
  end
end
