class GovesController < ApplicationController
  before_action :set_gofe, only: [:show, :edit, :update, :destroy]

  # GET /goves
  # GET /goves.json
  def index
    @gofes = Gofe.all
    @segments = Segment.all
    @events = Event.all
    @groups = Group.all
    @years = Gofe.pluck(:year).map{|x| x}.uniq.sort
    @comps = Gofe.pluck(:competition).map{|x| x}.uniq.sort
  end

  # GET /goves/1
  # GET /goves/1.json
  def show
  end

  # GET /goves/new
  def new
    @gofe = Gofe.new
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
        format.html { redirect_to @gofe, notice: 'Gofe was successfully created.' }
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
        format.html { redirect_to @gofe, notice: 'Gofe was successfully updated.' }
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def gofe_params
      params.require(:gofe).permit(:level_id, :event_id, :segment_id, :year, :competition, :skater1, :skater2, :element, :grade, :achieved)
    end
end
