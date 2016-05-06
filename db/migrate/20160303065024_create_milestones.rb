class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :title
      t.date :due_date
      t.text :description
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
