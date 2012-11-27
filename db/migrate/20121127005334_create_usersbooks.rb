class CreateUsersbooks < ActiveRecord::Migration
  def change
    create_table :usersbooks do |t|
      t.integer :users_id
      t.integer :books_id
      t.float :value

      t.timestamps
    end
  end
end
