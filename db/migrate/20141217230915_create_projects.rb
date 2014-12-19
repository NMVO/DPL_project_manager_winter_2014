class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :goal
      t.datetime :due_date

      t.timestamps
    end
  end
end
