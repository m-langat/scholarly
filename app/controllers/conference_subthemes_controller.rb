class ConferenceSubthemesController < ApplicationController
  before_action :set_conference_subtheme, only: %i[ show edit update destroy ]

  # GET /conference_subthemes or /conference_subthemes.json
  def index
    @conference_subthemes = ConferenceSubtheme.all
  end

  # GET /conference_subthemes/1 or /conference_subthemes/1.json
  def show
  end

  # GET /conference_subthemes/new
  def new
    @conference_subtheme = ConferenceSubtheme.new
  end

  # GET /conference_subthemes/1/edit
  def edit
  end

  # POST /conference_subthemes or /conference_subthemes.json
  def create
    @conference_subtheme = ConferenceSubtheme.new(conference_subtheme_params)

    respond_to do |format|
      if @conference_subtheme.save
        format.html { redirect_to conference_subtheme_url(@conference_subtheme), notice: "Conference subtheme was successfully created." }
        format.json { render :show, status: :created, location: @conference_subtheme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conference_subtheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conference_subthemes/1 or /conference_subthemes/1.json
  def update
    respond_to do |format|
      if @conference_subtheme.update(conference_subtheme_params)
        format.html { redirect_to conference_subtheme_url(@conference_subtheme), notice: "Conference subtheme was successfully updated." }
        format.json { render :show, status: :ok, location: @conference_subtheme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conference_subtheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conference_subthemes/1 or /conference_subthemes/1.json
  def destroy
    @conference_subtheme.destroy

    respond_to do |format|
      format.html { redirect_to conference_subthemes_url, notice: "Conference subtheme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference_subtheme
      @conference_subtheme = ConferenceSubtheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conference_subtheme_params
      params.require(:conference_subtheme).permit(:name, :conference_theme_id)
    end
end
