class AddAttachmentAvatarToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :properties, :avatar
  end
end
