class ConferenceThemesController < ApplicationController
  before_action :set_conference_theme, only: %i[ show edit update destroy ]

  # GET /conference_themes or /conference_themes.json
  def index
    @conference_themes = ConferenceTheme.all
  end

  # GET /conference_themes/1 or /conference_themes/1.json
  def show
  end

  # GET /conference_themes/new
  def new
    @conference_theme = ConferenceTheme.new
  end

  # GET /conference_themes/1/edit
  def edit
  end

  # POST /conference_themes or /conference_themes.json
  def create
    @conference_theme = ConferenceTheme.new(conference_theme_params)

    respond_to do |format|
      if @conference_theme.save
        format.html { redirect_to conference_theme_url(@conference_theme), notice: "Conference theme was successfully created." }
        format.json { render :show, status: :created, location: @conference_theme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conference_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conference_themes/1 or /conference_themes/1.json
  def update
    respond_to do |format|
      if @conference_theme.update(conference_theme_params)
        format.html { redirect_to conference_theme_url(@conference_theme), notice: "Conference theme was successfully updated." }
        format.json { render :show, status: :ok, location: @conference_theme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conference_theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conference_themes/1 or /conference_themes/1.json
  def destroy
    @conference_theme.destroy

    respond_to do |format|
      format.html { redirect_to conference_themes_url, notice: "Conference theme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference_theme
      @conference_theme = ConferenceTheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conference_theme_params
      params.require(:conference_theme).permit(:name)
    end
end
