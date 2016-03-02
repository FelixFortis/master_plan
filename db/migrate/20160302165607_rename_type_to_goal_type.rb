class RenameTypeToGoalType < ActiveRecord::Migration
  def self.up
    rename_column :goals, :type, :goal_type
  end
  def self.down
    rename_column :goals, :goal_type, :type
  end
end
