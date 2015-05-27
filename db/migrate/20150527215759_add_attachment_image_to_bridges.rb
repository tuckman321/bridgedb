class AddAttachmentImageToBridges < ActiveRecord::Migration
  def self.up
    change_table :bridges do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :bridges, :image
  end
end
