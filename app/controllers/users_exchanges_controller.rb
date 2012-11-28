class UsersExchangesController < ApplicationController
  # GET /users_exchanges
  # GET /users_exchanges.json
  def index
    @users_exchanges = UsersExchange.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_exchanges }
    end
  end

  # GET /users_exchanges/1
  # GET /users_exchanges/1.json
  def show
    @users_exchange = UsersExchange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_exchange }
    end
  end

  # GET /users_exchanges/new
  # GET /users_exchanges/new.json
  def new
    @users_exchange = UsersExchange.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_exchange }
    end
  end

  # GET /users_exchanges/1/edit
  def edit
    @users_exchange = UsersExchange.find(params[:id])
  end

  # POST /users_exchanges
  # POST /users_exchanges.json
  def create
    @users_exchange = UsersExchange.new(params[:users_exchange])

    respond_to do |format|
      if @users_exchange.save
        format.html { redirect_to @users_exchange, notice: 'Users exchange was successfully created.' }
        format.json { render json: @users_exchange, status: :created, location: @users_exchange }
      else
        format.html { render action: "new" }
        format.json { render json: @users_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_exchanges/1
  # PUT /users_exchanges/1.json
  def update
    @users_exchange = UsersExchange.find(params[:id])

    respond_to do |format|
      if @users_exchange.update_attributes(params[:users_exchange])
        format.html { redirect_to @users_exchange, notice: 'Users exchange was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_exchanges/1
  # DELETE /users_exchanges/1.json
  def destroy
    @users_exchange = UsersExchange.find(params[:id])
    @users_exchange.destroy

    respond_to do |format|
      format.html { redirect_to users_exchanges_url }
      format.json { head :no_content }
    end
  end
end
