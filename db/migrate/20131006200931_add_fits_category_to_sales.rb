class AddFitsCategoryToSales < ActiveRecord::Migration
  def change
    add_column :sales, :category_fit, :string

  end
end
