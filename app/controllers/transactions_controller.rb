class TransactionsController < ApplicationController
  def index
    render json: Transaction.all
  end

  def create
    transaction = Transaction.new(transaction_params)

    if transaction.save
      render json: transaction, status: :created
    else
      render json: transaction.errors, status: :unprocessable_entity
    end

  end

  def transaction_params
    params.require(:transaction).permit(:transaction_description)
  end
end
