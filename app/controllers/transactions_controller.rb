class TransactionsController < ApplicationController
  def index
    render json: Transaction.all
  end

  def create
    transaction = Transaction.new(transaction_params)

    if transaction.save
      render json: transaction, status: :created
    else
      render json: transaction.errors, status: :bad_request
    end

  end

  def transaction_params
    params.require(:transaction).permit(:transaction_description, :activity_id, :transaction_time,
                                        :transaction_currency, :transaction_amount, :transaction_method,
                                        :account_balance, :requester, :source, :destination, :currency)
  end
end
