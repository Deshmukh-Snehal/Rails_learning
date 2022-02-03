class CalculatesController < ApplicationController
  before_action :set_calculate, only: %i[ show edit update destroy ]
  include CalculatesHelper

  # GET /calculates or /calculates.json
  def index

  end

  # GET /calculates/1 or /calculates/1.json
  def show
    
  end

  # GET /calculates/new
  def new
    @result = Calculate.send(params[:operation], *[params[:a], params[:b]])
    render :index
  end

  # GET /calculates/1/edit
  def edit
  end

  # POST /calculates or /calculates.json
  def create
    @calculate = Calculate.new(calculate_params)

    respond_to do |format|
      if @calculate.save
        format.html { redirect_to calculate_url(@calculate), notice: "Calculate was successfully created." }
        format.json { render :show, status: :created, location: @calculate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calculate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calculates/1 or /calculates/1.json
  def update
    respond_to do |format|
      if @calculate.update(calculate_params)
        format.html { redirect_to calculate_url(@calculate), notice: "Calculate was successfully updated." }
        format.json { render :show, status: :ok, location: @calculate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calculate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculates/1 or /calculates/1.json
  def destroy
    @calculate.destroy

    respond_to do |format|
      format.html { redirect_to calculates_url, notice: "Calculate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculate
      @calculate = Calculate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calculate_params
      params.require(:calculate).permit(:name)
    end
end
