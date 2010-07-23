class FixUspsDropDateType < ActiveRecord::Migration
  def self.up
    remove_column :mail_pieces, :usps_drop_date
    add_column :mail_pieces, :usps_drop_date, :date
  end

  def self.down
  end
end
