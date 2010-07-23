class AddColumnsToMailClient < ActiveRecord::Migration
  def self.up
    remove_column :mail_clients, :client_name
    add_column :mail_clients, :first_name, :string
    add_column :mail_clients, :last_name, :string
    add_column :mail_clients, :distrinct_number, :int
  end

  def self.down
  end
end
