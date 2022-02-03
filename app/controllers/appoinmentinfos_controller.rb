class AppoinmentinfosController < ApplicationController
  before_action :set_appoinmentinfo, only: %i[ show edit update destroy ]

  # GET /appoinmentinfos or /appoinmentinfos.json
  def index
    @appoinmentinfos = Appoinmentinfo.all
  end

  # GET /appoinmentinfos/1 or /appoinmentinfos/1.json
  def show
  end

  # GET /appoinmentinfos/new
  def new
    @appoinmentinfo = Appoinmentinfo.new
  end

  # GET /appoinmentinfos/1/edit
  def edit
  end

  # POST /appoinmentinfos or /appoinmentinfos.json
  def create
    @appoinmentinfo = Appoinmentinfo.new(appoinmentinfo_params)

    respond_to do |format|
      if @appoinmentinfo.save
        format.html { redirect_to appoinmentinfo_url(@appoinmentinfo), notice: "Appoinmentinfo was successfully created." }
        format.json { render :show, status: :created, location: @appoinmentinfo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appoinmentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appoinmentinfos/1 or /appoinmentinfos/1.json
  def update
    respond_to do |format|
      if @appoinmentinfo.update(appoinmentinfo_params)
        format.html { redirect_to appoinmentinfo_url(@appoinmentinfo), notice: "Appoinmentinfo was successfully updated." }
        format.json { render :show, status: :ok, location: @appoinmentinfo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appoinmentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appoinmentinfos/1 or /appoinmentinfos/1.json
  def destroy
    @appoinmentinfo.destroy

    respond_to do |format|
      format.html { redirect_to appoinmentinfos_url, notice: "Appoinmentinfo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appoinmentinfo
      @appoinmentinfo = Appoinmentinfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appoinmentinfo_params
      params.require(:appoinmentinfo).permit(:appoinmentinfo, :doctor_name, :player_name, :player_id, :doctor_id)
    end
end
