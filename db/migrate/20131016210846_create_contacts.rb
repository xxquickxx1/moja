class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :message
      t.boolean :read

      t.timestamps
    end
  end
end
