class AddColumnsToFreebies < ActiveRecord::Migration
  def change
  	add_column :freebies, :photo_file_name, :string
  	add_column :freebies, :photo_content_type, :string
  	add_column :freebies, :photo_file_size, :integer
  	add_column :freebies, :photo_updated_at, :datetime
  end
end
