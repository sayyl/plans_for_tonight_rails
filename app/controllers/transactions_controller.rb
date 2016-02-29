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
    # params[:general_ticket] params[:child_ticket] params[:ticket_count] parms[:event_id] current_user
    # self.total_price = self.adjustments.map{|adj| adj.nil? ? 0.00 : adj.amount}.sum
    @consumer = Consumer.find(params[:current_user_id])
    customer = Stripe::Customer.create(
      :email => @consumer.email,
      :source => params[:stripeToken]
      )
    transaction = Stripe::Transaction.create(
      :consumer_id => @consumer.id,
      :total => @total,
      )
    if transaction.save 
      redirect_to new_consumer_transaction_path(@consumer)
    end
  rescue Stripe::CardError => e 
    flash[:error] = e.message 
    redirect_to event_path(@event.id)
  end
    



    # @transaction = Transaction.new(transaction_params)
    # @transaction.consumer_id = current_user.id 
    # if @transaction.save
    #   redirect_to transaction_path
    # else
    #   render :new
    # end


  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:event_id])
    if @Transaction.update_attributes(transaction_params)
      redirect_to transaction_path
    else 
      render :edit 
    end
  end

end
 





