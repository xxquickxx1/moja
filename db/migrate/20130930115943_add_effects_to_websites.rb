class AddEffectsToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :effects, :string

  end
end
