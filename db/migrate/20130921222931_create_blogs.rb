class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
