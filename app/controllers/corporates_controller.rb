class CorporatesController < ApplicationController
  before_filter :restrict_to_corporate, :except => [:create, :new]


  def index
    @corporates = Corporate.all 
  end

  def show
    @corporate = Corporate.find(params[:id])
    # @result_hash = @corporate.calculate_event_total_transactions
    # @transaction_by_month = @corporate.transaction_by_month 
     # @event_test = @corporate.event_transactions_time

    all_transactions = Transaction.joins(:event).where("events.corporate_id = #{current_user.id}")

    @total_transactions = LazyHighCharts::HighChart.new('bar') do |f|
      f.title(text: "Total Transactions Per Event")
      f.xAxis(categories: @corporate.events.select('name').collect {|e| e.name})
      f.yAxis [
        {title: {text: "Total Transactions", margin: 70} },
      ]

      f.series(name: "Total Transaction Amount in CAD$", yAxis: 0, data: all_transactions.select('total').collect {|t| t.total.to_i})

      f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
      f.chart({defaultSeriesType: "column"})
    end

    @transactions_monthly = LazyHighCharts::HighChart.new('graph') do |f|
      f.options[:chart][:defaultSeriesType] = "area"
      f.options[:legend][:layout] = "horizontal"
      f.title(text: "Total Transactions over monthly period")
      f.xAxis(categories: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"])
      f.xAxis(type: :datetime)
      f.yAxis [
        {title: {text: "Total Transactions", margin: 70}}
      ]
      f.series(type: "line", name: "Total Transactions in CAD$", yAxis: 0, data: @corporate.transactions_by_month)

      f.legend(align: 'right', verticalAlign: 'top', y: 75, x: -50, layout: 'vertical')
      f.chart({defaultSeriesType: "column"})
    end


    
    
  end

  def new
    @corporate = Corporate.new
  end

  def create 
    @corporate = Corporate.new(corporate_params)
    if @corporate.save 
      session[:user_id] = @corporate.id 
      redirect_to corporate_path(@corporate), notice: "Welcome abroad, #{@corporate.name}"
    else
      render :new 
    end
  end

  def edit
  end

  protected

  def corporate_params 
    params.require(:corporate).permit(:name, :address_1, :address_2, :city, :province, :postal_code, :country, :phone, :email, :business_number, :password, :password_confirmation, :verified, :website_url)
  end
end
