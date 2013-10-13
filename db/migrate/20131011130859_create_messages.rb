class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :subject
      t.text :description
      t.string :website_link

      t.timestamps
    end
    add_index :messages, :user_id
  end
end
