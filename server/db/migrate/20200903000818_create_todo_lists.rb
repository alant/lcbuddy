class CreateTodoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_lists, id: false do |t|
      t.integer :id
      t.integer :todo_status_id
      t.integer :user_id
      t.integer :problem_id

      t.timestamps
    end
    execute 'ALTER TABLE todo_lists MODIFY COLUMN id int auto_increment PRIMARY KEY;'
    add_foreign_key :todo_lists, :todo_statuses
    add_foreign_key :todo_lists, :users
    add_foreign_key :todo_lists, :problems
  end
end
