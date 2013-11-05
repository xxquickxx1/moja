class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :design
      t.string :logo
      t.string :pages
      t.string :images
      t.string :content
      t.string :features
      t.string :socialmedia

      t.timestamps
    end
  end
end
