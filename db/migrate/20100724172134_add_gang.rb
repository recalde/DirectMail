class AddGang < ActiveRecord::Migration
  def self.up
    add_column :mail_pieces, :gang_name, :string
  end

  def self.down
  end
end
