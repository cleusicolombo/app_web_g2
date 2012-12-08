class CreateUsersExchanges < ActiveRecord::Migration
  def change
    create_table :users_exchanges do |t|
      t.references :users_id_1
      t.references :users_id_2
      t.references :books_id_1
      t.references :books_id_2

      t.timestamps

    end
    add_index :users_exchanges, :users_id_1, :users_id_2
    add_index :users_exchanges, :books_id_1, :books_id_2
  end
end
