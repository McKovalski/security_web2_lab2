class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :from_user_id, null: false
      t.integer :to_user_id, null: false
      t.float :ammount, null: false, default: 0

      t.timestamps
    end
  end
end
