class StarWithHonorsController < ApplicationController
  before_action :set_star_with_honor, only: [:show, :edit, :update, :destroy]
  before_action :set_skaters

  # GET /star_with_honors
  # GET /star_with_honors.json
  def index
    @star_with_honors = StarWithHonor.all
    @years = StarWithHonor.pluck(:year).map{ |x| x }.uniq.sort

  end

  # GET /star_with_honors/1
  # GET /star_with_honors/1.json
  def show
  end

  # GET /star_with_honors/new
  def new
    @star_with_honor = StarWithHonor.new
  end

  # GET /star_with_honors/1/edit
  def edit
  end

  # POST /star_with_honors
  # POST /star_with_honors.json
  def create
    @star_with_honor = StarWithHonor.new(star_with_honor_params)

    respond_to do |format|
      if @star_with_honor.save
        format.html { redirect_to @star_with_honor, notice: 'Record was successfully created.' }
        format.json { render :show, status: :created, location: @star_with_honor }
      else
        format.html { render :new }
        format.json { render json: @star_with_honor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /star_with_honors/1
  # PATCH/PUT /star_with_honors/1.json
  def update
    respond_to do |format|
      if @star_with_honor.update(star_with_honor_params)
        format.html { redirect_to @star_with_honor, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @star_with_honor }
      else
        format.html { render :edit }
        format.json { render json: @star_with_honor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /star_with_honors/1
  # DELETE /star_with_honors/1.json
  def destroy
    @star_with_honor.destroy
    respond_to do |format|
      format.html { redirect_to star_with_honors_url, notice: 'Star with honor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star_with_honor
      @star_with_honor = StarWithHonor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def star_with_honor_params
      params.require(:star_with_honor).permit(:star_test_id, :skater_id, :achieved, :year)
    end
end