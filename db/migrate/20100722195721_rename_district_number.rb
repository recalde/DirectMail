class RenameDistrictNumber < ActiveRecord::Migration
  def self.up
    rename_column :mail_clients, :distrinct_number, :district_number
  end

  def self.down
  end
end
