class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :monthly_payment
      t.string :cms
      t.string :training
      t.text :description
      t.string :e_commerce
      t.string :credit_card
      t.string :admin
      t.string :users
      t.string :type
      t.string :seo
      t.string :responsive
      t.string :contact_form
      t.string :images
      t.string :features
      t.decimal :price

      t.timestamps
    end
  end
end
