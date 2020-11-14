class BillGenerationsController < ApplicationController
  before_action :set_bill_generation, only: [:show, :edit, :update, :destroy]

  # GET /bill_generations
  # GET /bill_generations.json
  def index
    @bill_generations = BillGeneration.all
  end

  # GET /bill_generations/1
  # GET /bill_generations/1.json
  def show
  end

  # GET /bill_generations/new
  def new
    @bill_generation = BillGeneration.new
  end

  # GET /bill_generations/1/edit
  def edit
  end

  # POST /bill_generations
  # POST /bill_generations.json
  def create
    @bill_generation = BillGeneration.new(bill_generation_params)

    respond_to do |format|
      if @bill_generation.save
        format.html { redirect_to @bill_generation, notice: 'Bill generation was successfully created.' }
        format.json { render :show, status: :created, location: @bill_generation }
      else
        format.html { render :new }
        format.json { render json: @bill_generation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_generations/1
  # PATCH/PUT /bill_generations/1.json
  def update
    respond_to do |format|
      if @bill_generation.update(bill_generation_params)
        format.html { redirect_to @bill_generation, notice: 'Bill generation was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_generation }
      else
        format.html { render :edit }
        format.json { render json: @bill_generation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_generations/1
  # DELETE /bill_generations/1.json
  def destroy
    @bill_generation.destroy
    respond_to do |format|
      format.html { redirect_to bill_generations_url, notice: 'Bill generation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_generation
      @bill_generation = BillGeneration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bill_generation_params
      params.require(:bill_generation).permit(:sno, :items, :total, :discount, :amount)
    end
end
