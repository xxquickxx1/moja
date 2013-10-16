class AddDefaultValueToReadAttribute < ActiveRecord::Migration
  def change
  	change_column :contacts, :read, :boolean, :default => false
  end
end
