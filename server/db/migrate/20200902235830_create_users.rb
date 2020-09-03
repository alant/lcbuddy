class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: false do |t|
      t.integer :id
      t.string :email
      t.timestamp :last_seen
      t.string :github_username
      t.string :facebook_id
      t.bigint :twitter_id

      t.timestamps
    end
    execute 'ALTER TABLE users MODIFY COLUMN id int auto_increment PRIMARY KEY;'
  end
end
