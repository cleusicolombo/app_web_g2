class CreateUsersExchanges < ActiveRecord::Migration
  def change
    create_table :users_exchanges do |t|
      t.integer :users_id_1
      t.integer :users_id_2
      t.integer :books_id_1
      t.integer :books_id_2

      t.timestamps

    end
  end
end
