class RemoveColumnTypeFromSales < ActiveRecord::Migration
  def up
  	remove_column :sales, :type
  end

  def down
  end
end
