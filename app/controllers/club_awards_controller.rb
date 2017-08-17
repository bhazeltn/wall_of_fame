class ClubAwardsController < ApplicationController
  before_action :set_club_award, only: [:show, :edit, :update, :destroy]
  before_action :set_skaters

  # GET /club_awards
  # GET /club_awards.json
  def index
    @club_awards = ClubAward.all
    @years = ClubAward.pluck(:year).map{|x| x}.uniq.sort
    @awards = Award.all
    @award_types = AwardType.all
  end

  # GET /club_awards/1
  # GET /club_awards/1.json
  def show
  end

  # GET /club_awards/new
  def new
    @club_award = ClubAward.new
  end

  # GET /club_awards/1/edit
  def edit
  end

  # POST /club_awards
  # POST /club_awards.json
  def create
    @club_award = ClubAward.new(club_award_params)

    respond_to do |format|
      if @club_award.save
        format.html { redirect_to @club_award, notice: 'Club award was successfully created.' }
        format.json { render :show, status: :created, location: @club_award }
      else
        format.html { render :new }
        format.json { render json: @club_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /club_awards/1
  # PATCH/PUT /club_awards/1.json
  def update
    respond_to do |format|
      if @club_award.update(club_award_params)
        format.html { redirect_to @club_award, notice: 'Club award was successfully updated.' }
        format.json { render :show, status: :ok, location: @club_award }
      else
        format.html { render :edit }
        format.json { render json: @club_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /club_awards/1
  # DELETE /club_awards/1.json
  def destroy
    @club_award.destroy
    respond_to do |format|
      format.html { redirect_to club_awards_url, notice: 'Club award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_award
      @club_award = ClubAward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_award_params
      params.require(:club_award).permit(:skater_id, :award_id, :year)
    end
end
