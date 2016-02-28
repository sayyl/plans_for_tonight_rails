class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all 
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def create 
    @transaction = Transaction.new(transaction_params)
    @transaction.consumer_id = current_user.id 
    if @transaction.save
      redirect_to transaction_path
    else
      render :new
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @Transaction.update_attributes(transaction_params)
      redirect_to transaction_path
    else 
      render :edit 
    end
  end

  protected

  def transaction_params 
    params.require(:transaction).permit(:total, :successful)
  end
end

 





