class CoachinfosController < ApplicationController
  before_action :set_coachinfo, only: %i[ show edit update destroy ]

  # GET /coachinfos or /coachinfos.json
  def index
    @coachinfos = Coachinfo.all
  end

  # GET /coachinfos/1 or /coachinfos/1.json
  def show
  end

  # GET /coachinfos/new
  def new
    @coachinfo = Coachinfo.new
  end

  # GET /coachinfos/1/edit
  def edit
  end

  # POST /coachinfos or /coachinfos.json
  def create
    @coachinfo = Coachinfo.new(coachinfo_params)

    respond_to do |format|
      if @coachinfo.save
        Coachmailer.with(player: current_player, coachinfo: @coachinfo).Coach_Created.deliver_later
        format.html { redirect_to coachinfo_url(@coachinfo), notice: "Coachinfo was successfully created." }
        format.json { render :show, status: :created, location: @coachinfo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coachinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coachinfos/1 or /coachinfos/1.json
  def update
    respond_to do |format|
      if @coachinfo.update(coachinfo_params)
        format.html { redirect_to coachinfo_url(@coachinfo), notice: "Coachinfo was successfully updated." }
        format.json { render :show, status: :ok, location: @coachinfo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coachinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coachinfos/1 or /coachinfos/1.json
  def destroy
    @coachinfo.destroy

    respond_to do |format|
      format.html { redirect_to coachinfos_url, notice: "Coachinfo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coachinfo
      @coachinfo = Coachinfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coachinfo_params
      params.require(:coachinfo).permit(:name, :sportname, :age, :country, :sport_id)
    end
end
