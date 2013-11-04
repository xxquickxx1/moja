class CreateFreesites < ActiveRecord::Migration
  def change
    create_table :freesites do |t|
      t.string :name
      t.text :description
      t.integer :freeby_id

      t.timestamps
    end
    add_index :freesites, :freeby_id
  end
end
