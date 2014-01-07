class CreateT0s < ActiveRecord::Migration
  def self.up
    create_table :t0s do |t|
      t.string :name
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :t0s
  end
end
