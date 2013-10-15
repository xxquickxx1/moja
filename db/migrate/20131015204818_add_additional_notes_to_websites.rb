class AddAdditionalNotesToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :additional_notes, :text

  end
end
