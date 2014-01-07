class AddPath < ActiveRecord::Migration
  def self.up
    add_column :products, :path, :string
  end

  def self.down
    remove_column :accounts, :ssl_enabled
  end
end
