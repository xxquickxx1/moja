class AddQuoteToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :quote, :string

  end
end
