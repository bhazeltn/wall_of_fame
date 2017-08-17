class AbTeamsController < ApplicationController
  before_action :set_ab_team, only: [:show, :edit, :update, :destroy]
  before_action :set_skaters

  # GET /ab_teams
  # GET /ab_teams.json
  def index
    @ab_teams = AbTeam.all
    @years = AbTeam.pluck(:year).map{|x| x}.uniq.sort
    @teams = Team.order(name: :asc)
  end

  # GET /ab_teams/1
  # GET /ab_teams/1.json
  def show
  end

  # GET /ab_teams/new
  def new
    @ab_team = AbTeam.new
  end

  # GET /ab_teams/1/edit
  def edit
  end

  # POST /ab_teams
  # POST /ab_teams.json
  def create
    @ab_team = AbTeam.new(ab_team_params)

    respond_to do |format|
      if @ab_team.save
        format.html { redirect_to @ab_team, notice: 'Record was created.' }
        format.json { render :show, status: :created, location: @ab_team }
      else
        format.html { render :new }
        format.json { render json: @ab_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_teams/1
  # PATCH/PUT /ab_teams/1.json
  def update
    respond_to do |format|
      if @ab_team.update(ab_team_params)
        format.html { redirect_to @ab_team, notice: 'Record was updated' }
      else
        format.html { render :edit }
        format.json { render json: @ab_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ab_teams/1
  # DELETE /ab_teams/1.json
  def destroy
    @ab_team.destroy
    respond_to do |format|
      format.html { redirect_to ab_teams_url, notice: 'Record was destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_team
      @ab_team = AbTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_team_params
      params.require(:ab_team).permit(:skater_id, :team_id, :year)
    end
end
