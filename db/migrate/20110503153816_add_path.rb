class AddPath < ActiveRecord::Migration
  def self.up
    add_column :products, :path, :string
  end
  def self.down
    remove_column :products, :path
  end
end
