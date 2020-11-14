class AddstocksController < ApplicationController
  before_action :set_addstock, only: [:show, :edit, :update, :destroy]

  # GET /addstocks
  # GET /addstocks.json
  def index
    @addstocks = Addstock.all
  end

  # GET /addstocks/1
  # GET /addstocks/1.json
  def show
  end

  # GET /addstocks/new
  def new
    @addstock = Addstock.new
    @medicine = Medicine.new
  end

  # GET /addstocks/1/edit
  def edit
  end

  # POST /addstocks
  # POST /addstocks.json
  def create
    @addstock = Addstock.new(addstock_params)

    respond_to do |format|
      if @addstock.save
        @addstock.medicine.quantity = @addstock.quantity + @addstock.medicine.quantity
        @addstock.medicine.save
        format.html { redirect_to @addstock, notice: 'Addstock was successfully created.' }
        format.json { render :show, status: :created, location: @addstock }
      else
        format.html { render :new }
        format.json { render json: @addstock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addstocks/1
  # PATCH/PUT /addstocks/1.json
  def update
    respond_to do |format|
      if @addstock.update(addstock_params)
        format.html { redirect_to @addstock, notice: 'Addstock was successfully updated.' }
        format.json { render :show, status: :ok, location: @addstock }
      else
        format.html { render :edit }
        format.json { render json: @addstock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addstocks/1
  # DELETE /addstocks/1.json
  def destroy
    @addstock.destroy
    respond_to do |format|
      format.html { redirect_to addstocks_url, notice: 'Addstock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create_add_medicine
    byebug
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addstock
      @addstock = Addstock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def addstock_params
      params.require(:addstock).permit(:name, :cost, :quantity, :manufacturer_date, :expiry_date, :medicine_id)
    end
end
