class AddPhotoToSales < ActiveRecord::Migration
  def change
  	add_column :sales, :photo, :string
  end
end
