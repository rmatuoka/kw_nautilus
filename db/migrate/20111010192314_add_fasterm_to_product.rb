class AddFastermToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :fasterm, :boolean
  end

  def self.down
    remove_column :products, :fasterm
  end
end
