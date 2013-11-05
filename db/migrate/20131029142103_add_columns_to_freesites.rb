class AddColumnsToFreesites < ActiveRecord::Migration
  def change
  	add_column :freesites, :photo_file_name, :string
  	add_column :freesites, :photo_content_type, :string
  	add_column :freesites, :photo_file_size, :integer
  	add_column :freesites, :photo_updated_at, :datetime
  end
end
