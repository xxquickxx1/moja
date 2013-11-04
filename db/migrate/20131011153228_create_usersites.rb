class CreateUsersites < ActiveRecord::Migration
  def change
    create_table :usersites do |t|
      t.string :website_link

      t.timestamps
    end
  end
end
