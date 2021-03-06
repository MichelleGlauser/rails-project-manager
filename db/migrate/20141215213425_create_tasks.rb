class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :difficulty_level
      t.references :project, index: true

      t.timestamps
    end
  end
end
