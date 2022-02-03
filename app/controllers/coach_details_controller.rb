class CoachDetailsController < ApplicationController
  before_action :set_coach_detail, only: %i[ show edit update destroy ]

  # GET /coach_details or /coach_details.json
  def index
    @coach_details = CoachDetail.all
  end

  # GET /coach_details/1 or /coach_details/1.json
  def show
  end

  # GET /coach_details/new
  def new
    @coach_detail = CoachDetail.new
  end

  # GET /coach_details/1/edit
  def edit
  end

  # POST /coach_details or /coach_details.json
  def create
    @coach_detail = CoachDetail.new(coach_detail_params)

    respond_to do |format|
      if @coach_detail.save
        format.html { redirect_to coach_detail_url(@coach_detail), notice: "Coach detail was successfully created." }
        format.json { render :show, status: :created, location: @coach_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coach_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coach_details/1 or /coach_details/1.json
  def update
    respond_to do |format|
      if @coach_detail.update(coach_detail_params)
        format.html { redirect_to coach_detail_url(@coach_detail), notice: "Coach detail was successfully updated." }
        format.json { render :show, status: :ok, location: @coach_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coach_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coach_details/1 or /coach_details/1.json
  def destroy
    @coach_detail.destroy

    respond_to do |format|
      format.html { redirect_to coach_details_url, notice: "Coach detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach_detail
      @coach_detail = CoachDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coach_detail_params
      params.require(:coach_detail).permit(:name, :sport, :country, :email, :age, :sport_id)
    end
end
