class AddColumnsToMailPiece < ActiveRecord::Migration
  def self.up
    remove_column :mail_pieces, :alias
    remove_column :mail_pieces, :sent_to_printer
    remove_column :mail_pieces, :sent_to_postoffice
    add_column :mail_pieces, :piece_name, :string
    add_column :mail_pieces, :piece_code, :string
    add_column :mail_pieces, :mail_universe_description, :string
    add_column :mail_pieces, :household_quantity_estimate, :integer
    add_column :mail_pieces, :voter_count, :integer
    add_column :mail_pieces, :list_name, :string
    add_column :mail_pieces, :date_to_printer, :date
    add_column :mail_pieces, :usps_drop_date, :string
    add_column :mail_pieces, :expected_drop_date, :string
    add_column :mail_pieces, :target_hit_date, :date
    add_column :mail_pieces, :actual_hit_date, :date
    add_column :mail_pieces, :payment_description, :string
    add_column :mail_pieces, :final_status, :string
    add_column :mail_pieces, :have_invoice, :boolean
  end

  def self.down
  end
end
