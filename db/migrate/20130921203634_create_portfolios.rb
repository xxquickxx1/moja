class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :url
      t.string :name
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
