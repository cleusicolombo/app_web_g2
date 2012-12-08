class CreateUsersbooks < ActiveRecord::Migration
  def change
    create_table :usersbooks do |t|
      t.references :users_id
      t.references :books_id
	  t.float  :value,	:default => 0

      t.timestamps

    end
    add_index :usersbooks, :users_id
    add_index :usersbooks, :books_id
  end
end
