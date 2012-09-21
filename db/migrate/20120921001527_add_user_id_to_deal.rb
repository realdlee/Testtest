class AddUserIdToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :user_id, :integer
    add_column :deals, :city, :string, :default => "National"
    remove_column :transactions, :user_id
    remove_column :transactions, :role

    add_index :deals, :user_id
  end
end
