class AddAttachmentPhotoToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :portfolios, :photo
  end
end
