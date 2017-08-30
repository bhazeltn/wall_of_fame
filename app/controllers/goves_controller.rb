class GovesController < ApplicationController
  before_action :set_gofe, only: [:show, :edit, :update, :destroy]
  before_action :set_skaters
  before_action :set_competitions

  # GET /goves
  # GET /goves.json
  def index
    @gofes = Gofe.all
    @segments = Segment.all
    @levels = Level.all
    @events = Event.all
    @groups = Group.all
    @years = Gofe.pluck(:year).map{|x| x}.uniq.sort
    @discipline = Gofe.pluck(:discipline).map{|x| x}.uniq.sort
  end

  # GET /goves/1
  # GET /goves/1.json
  def show
  end

  # GET /goves/new
  def new
    @gofe = Gofe.new
    set_new
  end

  # GET /goves/1/edit
  def edit
  end

  # POST /goves
  # POST /goves.json
  def create
    @gofe = Gofe.new(gofe_params)

    respond_to do |format|
      if @gofe.save
        format.html { redirect_to @gofe, notice: 'Record successfully created.' }
        format.json { render :show, status: :created, location: @gofe }
      else
        format.html { render :new }
        format.json { render json: @gofe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goves/1
  # PATCH/PUT /goves/1.json
  def update
    respond_to do |format|
      if @gofe.update(gofe_params)
        format.html { redirect_to @gofe, notice: 'Record successfully updated.' }
        format.json { render :show, status: :ok, location: @gofe }
      else
        format.html { render :edit }
        format.json { render json: @gofe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goves/1
  # DELETE /goves/1.json
  def destroy
    @gofe.destroy
    respond_to do |format|
      format.html { redirect_to goves_url, notice: 'Gofe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gofe
      @gofe = Gofe.find(params[:id])
    end

    def set_new
      @gofe.skater1 = params[:s1] if params.has_key?(:s1)
      @gofe.skater2 = params[:s2] if params.has_key?(:s2)
      @gofe.level_id = params[:l] if params.has_key?(:l)
      @gofe.event_id = params[:e] if params.has_key?(:e)
      @gofe.competition_id = params[:c] if params.has_key?(:c)
      @gofe.achieved = params[:a] if params.has_key?(:a)
      @gofe.segment_id = params[:s] if params.has_key?(:s)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gofe_params
      params.require(:gofe).permit(:level_id, :event_id, :segment_id, :year, :competition_id, :skater1, :skater2, :element, :grade, :achieved)
    end
end
