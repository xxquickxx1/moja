class CreateQuickQuestions < ActiveRecord::Migration
  def change
    create_table :quick_questions do |t|
      t.integer :user_id
      t.string :subject
      t.text :description

      t.timestamps
    end
    add_index :quick_questions, :user_id
  end
end
