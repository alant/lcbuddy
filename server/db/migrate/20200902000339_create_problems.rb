class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems, id: false do |t|
      t.integer :id
      t.string :title
      t.string :url
      t.boolean :locked
      t.string :source

      t.timestamps
    end
    execute 'ALTER TABLE problems MODIFY COLUMN id int auto_increment PRIMARY KEY;'
  end
end
