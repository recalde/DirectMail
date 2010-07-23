class CreateMailClients < ActiveRecord::Migration
  def self.up
    create_table :mail_clients do |t|
      t.string :client_name

      t.timestamps
    end
  end

  def self.down
    drop_table :mail_clients
  end
end
