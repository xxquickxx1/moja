class AddColumnsToSales < ActiveRecord::Migration
  def change
  	add_column :sales, :photo_file_name, :string
  	add_column :sales, :photo_content_type, :string
  	add_column :sales, :photo_file_size, :integer
  	add_column :sales, :photo_updated_at, :datetime
  end
end
