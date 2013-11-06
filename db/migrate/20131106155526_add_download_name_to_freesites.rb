class AddDownloadNameToFreesites < ActiveRecord::Migration
  def change
    add_column :freesites, :download_name, :string

  end
end
