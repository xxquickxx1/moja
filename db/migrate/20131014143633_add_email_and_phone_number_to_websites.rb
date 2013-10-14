class AddEmailAndPhoneNumberToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :email, :string

    add_column :websites, :phone_number, :string

  end
end
