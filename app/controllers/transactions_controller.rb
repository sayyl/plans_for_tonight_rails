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
    @event = Event.find(params[:event_id])
    if params[:general_count].to_i + params[:child_count].to_i > @event.ticket_available 
      flash[:error] = "Please Select Number of tickets less than or equal to #{@event.ticket_available} "
      redirect_to event_path(@event.id)
    else
      @amount = Transaction.total_price(@event,params[:general_count],params[:child_count])
      stripeCustomer = Stripe::Customer.create(
        :email => 'bahar_rachapalli@yahoo.com',
        :source => params[:stripeToken]
        )
      charge = Stripe::Charge.create(
        :customer => stripeCustomer.id,
        :amount => @amount,
        :description => 'Rails Stripe customer',
        :currency => 'cad',
        :receipt_email => stripeCustomer.email
        )

      @transaction = Transaction.new_trasaction(@event, current_user.id, params[:general_count], params[:child_count], @amount, charge.id)
      redirect_to @transaction
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
 





