class Game01sController < ApplicationController
  before_action :set_game01, only: %i[ show edit update destroy ]

  # GET /game01s or /game01s.json
  def index
    @game01s = Game01.all
  end

  # GET /game01s/1 or /game01s/1.json
  def show
  end

  # GET /game01s/new
  def new
    @game01 = Game01.new
  end

  # GET /game01s/1/edit
  def edit
  end

  # POST /game01s or /game01s.json
  def create
    @game01 = Game01.new(game01_params)

    respond_to do |format|
      if @game01.save
        format.html { redirect_to @game01, notice: "Game01 was successfully created." }
        format.json { render :show, status: :created, location: @game01 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game01.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game01s/1 or /game01s/1.json
  def update
    respond_to do |format|
      if @game01.update(game01_params)
        format.html { redirect_to @game01, notice: "Game01 was successfully updated." }
        format.json { render :show, status: :ok, location: @game01 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game01.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game01s/1 or /game01s/1.json
  def destroy
    @game01.destroy
    respond_to do |format|
      format.html { redirect_to game01s_url, notice: "Game01 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game01
      @game01 = Game01.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game01_params
      params.require(:game01).permit(:name, :rule_text, :rule, :box, pieces:[])
    end
end
