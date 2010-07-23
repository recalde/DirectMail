class CreateMailPieces < ActiveRecord::Migration
  def self.up
    create_table :mail_pieces do |t|
      t.string :alias
      t.date :sent_to_printer
      t.date :sent_to_postoffice

      t.timestamps
    end
  end

  def self.down
    drop_table :mail_pieces
  end
end
