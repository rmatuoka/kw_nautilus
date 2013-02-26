class AddOrderToDownload < ActiveRecord::Migration
  def self.up   
    add_column :downloads, :order, :integer, :default => 10
  end

  def self.down
    remove_column :downloads, :order
  end
end
