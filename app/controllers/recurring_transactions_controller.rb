class RecurringTransactionsController < ApplicationController
  def new
  end

  def index
    @recurring_transactions = RecurringTransaction.all.order(:date_from)
  end

  def create
    @recurring_transaction = RecurringTransaction.new(recurring_transaction_params)

    @recurring_transaction.save

    redirect_to action: "index"
  end

  def recurring_transaction_params
    params.require(:recurring_transaction).permit(:description, :date_from, :date_to, :recurrence, :amount)
  end
end
