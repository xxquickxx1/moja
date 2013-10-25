class CreateFreebies < ActiveRecord::Migration
  def change
    create_table :freebies do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
