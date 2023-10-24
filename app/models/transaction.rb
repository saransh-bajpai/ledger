class Transaction < ApplicationRecord
  validates_presence_of :transaction_description, :activity_id, :transaction_time

  CURRENCY = ['INR', 'USD']
  validates :transaction_currency, inclusion: { in: CURRENCY }


  TRANSACTION_METHOD = ['CREDIT', 'DEBIT']
  validates :transaction_method, inclusion: { in: TRANSACTION_METHOD }

  validates :transaction_amount, numericality: { greater_than: 0.0 }

  validates :account_balance, numericality: true
end
