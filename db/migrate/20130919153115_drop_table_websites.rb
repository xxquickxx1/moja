class DropTableWebsites < ActiveRecord::Migration
  def up
  	drop_table :websites
  end

  def down
  end
end
