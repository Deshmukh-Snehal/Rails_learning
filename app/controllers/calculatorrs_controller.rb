class CalculatorrsController < ApplicationController
  before_action :set_calculatorr, only: %i[ show edit update destroy ]

  # GET /calculatorrs or /calculatorrs.json
  def index
    @calculatorrs = Calculatorr.all
  end

  # GET /calculatorrs/1 or /calculatorrs/1.json
  def show
  end

  # GET /calculatorrs/new
  def new
    @calculatorr = Calculatorr.new
  end

  # GET /calculatorrs/1/edit
  def edit
  end

  # POST /calculatorrs or /calculatorrs.json
  def create
    @calculatorr = Calculatorr.new(calculatorr_params)

    respond_to do |format|
      if @calculatorr.save
        format.html { redirect_to calculatorr_url(@calculatorr), notice: "Calculatorr was successfully created." }
        format.json { render :show, status: :created, location: @calculatorr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calculatorr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculatorrs/1 or /calculatorrs/1.json
  def update
    respond_to do |format|
      if @calculatorr.update(calculatorr_params)
        format.html { redirect_to calculatorr_url(@calculatorr), notice: "Calculatorr was successfully updated." }
        format.json { render :show, status: :ok, location: @calculatorr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calculatorr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculatorrs/1 or /calculatorrs/1.json
  def destroy
    @calculatorr.destroy

    respond_to do |format|
      format.html { redirect_to calculatorrs_url, notice: "Calculatorr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculatorr
      @calculatorr = Calculatorr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calculatorr_params
      params.require(:calculatorr).permit(:name)
    end
end
