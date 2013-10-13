class AddUserIdToUsersites < ActiveRecord::Migration
  def change
    add_column :usersites, :user_id, :integer

  end
end
