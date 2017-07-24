class StarGoldsController < ApplicationController
  before_action :set_star_gold, only: [:show, :edit, :update, :destroy]

  # GET /star_golds
  # GET /star_golds.json
  def index
    @star_golds = StarGold.all
    @years = StarGold.pluck(:year).map{|x| x}
    @comps = StarGold.pluck(:competition_id).map{|x| x}.uniq.sort
  end

  # GET /star_golds/1
  # GET /star_golds/1.json
  def show
  end

  # GET /star_golds/new
  def new
    @star_gold = StarGold.new
  end

  # GET /star_golds/1/edit
  def edit
  end

  # POST /star_golds
  # POST /star_golds.json
  def create
    @star_gold = StarGold.new(star_gold_params)

    respond_to do |format|
      if @star_gold.save
        format.html { redirect_to @star_gold, notice: 'Star gold was successfully created.' }
        format.json { render :show, status: :created, location: @star_gold }
      else
        format.html { render :new }
        format.json { render json: @star_gold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /star_golds/1
  # PATCH/PUT /star_golds/1.json
  def update
    respond_to do |format|
      if @star_gold.update(star_gold_params)
        format.html { redirect_to @star_gold, notice: 'Star gold was successfully updated.' }
        format.json { render :show, status: :ok, location: @star_gold }
      else
        format.html { render :edit }
        format.json { render json: @star_gold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /star_golds/1
  # DELETE /star_golds/1.json
  def destroy
    @star_gold.destroy
    respond_to do |format|
      format.html { redirect_to star_golds_url, notice: 'Star gold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star_gold
      @star_gold = StarGold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def star_gold_params
      params.require(:star_gold).permit(:star_level_id, :skater_id, :competition_id, :element, :year, :achieved)
    end
end
