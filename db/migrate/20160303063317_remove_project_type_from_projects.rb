class RemoveProjectTypeFromProjects < ActiveRecord::Migration
  def self.up
    remove_column :projects, :project_type
  end
  def self.down
    add_column :projects, :project_type, :string
  end
end
