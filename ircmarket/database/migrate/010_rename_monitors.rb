class RenameMonitors < ActiveRecord::Migration
  def self.up
    rename_table :monitors, :watches
  end

  def self.down
    rename_table :watchers, :monitors
  end
end
