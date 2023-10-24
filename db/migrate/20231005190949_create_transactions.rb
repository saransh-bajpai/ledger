class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.datetime :transaction_time
      t.string :transaction_description
      t.float :transaction_amount
      t.string :transaction_currency
      t.float :account_balance
      t.string :currency
      t.string :activity_id
      t.string :transaction_method
      t.json :requester
      t.json :source
      t.json :destination

      t.timestamps
    end
  end
end
