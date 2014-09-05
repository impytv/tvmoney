class TransactionsController < ApplicationController
  def new
  end

  def index
    @transactions = Transaction.all.order(:date, amount: :desc, description: :asc)
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def create
    @transaction = Transaction.new(transaction_params)

    @transaction.save
    redirect_to action: "index"
  end

  def transaction_params
    params.require(:transaction).permit(:description, :date, :amount)
  end
end
