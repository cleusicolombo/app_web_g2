class UsersbooksController < ApplicationController
  # GET /usersbooks
  # GET /usersbooks.json
  def index
    @usersbooks = Usersbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usersbooks }
    end
  end

  # GET /usersbooks/1
  # GET /usersbooks/1.json
  def show
    @usersbook = Usersbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usersbook }
    end
  end

  # GET /usersbooks/new
  # GET /usersbooks/new.json
  def new
    @usersbook = Usersbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usersbook }
    end
  end

  # GET /usersbooks/1/edit
  def edit
    @usersbook = Usersbook.find(params[:id])
  end

  # POST /usersbooks
  # POST /usersbooks.json
  def create
    @usersbook = Usersbook.new(params[:usersbook])

    respond_to do |format|
      if @usersbook.save
        format.html { redirect_to @usersbook, notice: 'Registro criado com sucesso!' }
        format.json { render json: @usersbook, status: :created, location: @usersbook }
      else
        format.html { render action: "new" }
        format.json { render json: @usersbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usersbooks/1
  # PUT /usersbooks/1.json
  def update
    @usersbook = Usersbook.find(params[:id])

    respond_to do |format|
      if @usersbook.update_attributes(params[:usersbook])
        format.html { redirect_to @usersbook, notice: 'Registro atualizado com sucesso!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usersbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usersbooks/1
  # DELETE /usersbooks/1.json
  def destroy
    @usersbook = Usersbook.find(params[:id])
    @usersbook.destroy

    respond_to do |format|
      format.html { redirect_to usersbooks_url }
      format.json { head :no_content }
    end
  end
end
