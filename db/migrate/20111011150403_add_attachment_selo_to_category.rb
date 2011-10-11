class AddAttachmentSeloToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :selo_file_name, :string
    add_column :categories, :selo_content_type, :string
    add_column :categories, :selo_file_size, :integer
    add_column :categories, :selo_updated_at, :datetime
  end

  def self.down
    remove_column :categories, :selo_file_name
    remove_column :categories, :selo_content_type
    remove_column :categories, :selo_file_size
    remove_column :categories, :selo_updated_at
  end
end
