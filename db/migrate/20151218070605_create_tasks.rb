class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :created_at
      t.text :content
      t.integer :owner
      t.datetime :due_date
      t.boolean :done

      t.timestamps null: false
    end
  end
end
