class AppoinmentdetailsController < ApplicationController
  before_action :set_appoinmentdetail, only: %i[ show edit update destroy ]

  # GET /appoinmentdetails or /appoinmentdetails.json
  def index
    @appoinmentdetails = Appoinmentdetail.all
  end

  # GET /appoinmentdetails/1 or /appoinmentdetails/1.json
  def show
  end

  # GET /appoinmentdetails/new
  def new
    @appoinmentdetail = Appoinmentdetail.new
  end

  # GET /appoinmentdetails/1/edit
  def edit
  end

  # POST /appoinmentdetails or /appoinmentdetails.json
  def create
    @appoinmentdetail = Appoinmentdetail.new(appoinmentdetail_params)

    respond_to do |format|
      if @appoinmentdetail.save
        format.html { redirect_to appoinmentdetail_url(@appoinmentdetail), notice: "Appoinmentdetail was successfully created." }
        format.json { render :show, status: :created, location: @appoinmentdetail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appoinmentdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appoinmentdetails/1 or /appoinmentdetails/1.json
  def update
    respond_to do |format|
      if @appoinmentdetail.update(appoinmentdetail_params)
        format.html { redirect_to appoinmentdetail_url(@appoinmentdetail), notice: "Appoinmentdetail was successfully updated." }
        format.json { render :show, status: :ok, location: @appoinmentdetail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appoinmentdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appoinmentdetails/1 or /appoinmentdetails/1.json
  def destroy
    @appoinmentdetail.destroy

    respond_to do |format|
      format.html { redirect_to appoinmentdetails_url, notice: "Appoinmentdetail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appoinmentdetail
      @appoinmentdetail = Appoinmentdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appoinmentdetail_params
      params.require(:appoinmentdetail).permit(:appoinment_details,:doctor_id, :player_id)
    end
end
