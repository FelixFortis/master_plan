class RemoveGoalTypeFromGoals < ActiveRecord::Migration
  def self.up
    remove_column :goals, :goal_type
  end
  def self.down
    add_column :goals, :goal_type, :string
  end
end
