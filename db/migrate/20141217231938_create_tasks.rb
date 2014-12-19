class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :category
      t.text :body
      t.references :project

      t.timestamps
    end
  end
end
