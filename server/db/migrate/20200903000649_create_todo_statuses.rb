class CreateTodoStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_statuses, id: false do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
    execute 'ALTER TABLE todo_statuses MODIFY COLUMN id int auto_increment PRIMARY KEY;'
  end
end
