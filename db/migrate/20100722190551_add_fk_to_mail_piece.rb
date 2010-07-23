class AddFkToMailPiece < ActiveRecord::Migration
  def self.up
    add_column :mail_pieces, :mail_client_id, :integer
  end

  def self.down
  end
end
