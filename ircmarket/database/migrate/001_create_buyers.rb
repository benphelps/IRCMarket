class CreateBuyers < ActiveRecord::Migration
  def self.up
    create_table :buyers do |t|
      t.column :name, :string
    end
  end

  def self.down
    drop_table :buyers
  end
end
