class CreateActionSteps < ActiveRecord::Migration
  def change
    create_table :action_steps do |t|
      t.string :title
      t.date :due_date
      t.text :description
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
