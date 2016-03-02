class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.string :type
      t.date :due_date
      t.text :description

      t.timestamps null: false
    end
  end
end
