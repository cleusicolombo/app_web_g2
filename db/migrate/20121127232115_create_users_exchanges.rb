class CreateUsersExchanges < ActiveRecord::Migration
  def change
    create_table :users_exchanges do |t|
      t.integer :users_id_1
      t.string :users_id_2
      t.string :integer
      t.integer :books_id_1
      t.string :books_id_2
      t.string :integer

      t.timestamps
    end
  end
end
