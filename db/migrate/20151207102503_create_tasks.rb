class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :assigned
      t.integer :status_id
      t.integer :worker_id

      t.timestamps null: false
    end
  end
end
