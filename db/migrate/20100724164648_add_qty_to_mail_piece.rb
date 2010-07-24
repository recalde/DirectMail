class AddQtyToMailPiece < ActiveRecord::Migration
  def self.up
    add_column :mail_pieces, :order_qty, :int
    add_column :mail_pieces, :current_status, :string
  end
  def self.down
  end
end
