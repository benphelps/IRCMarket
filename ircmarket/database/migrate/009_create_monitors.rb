class CreateMonitors < ActiveRecord::Migration
  def self.up
    create_table :monitors do |t|
      t.column :symbol, :string
      t.column :name, :string
      t.column :monitor, :string
      t.column :target, :integer
      t.column :buyer_id, :integer
    end
  end

  def self.down
    drop_table :monitors
  end
end
