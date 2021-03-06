class ExternalAwardsController < ApplicationController
  before_action :set_external_award, only: [:show, :edit, :update, :destroy]
  before_action :set_skaters
  
  # GET /external_awards
  # GET /external_awards.json
  def index
    @external_awards = ExternalAward.order(year: :asc)
    @even_awards = Array.new()
    @odd_awards = Array.new()
    @external_awards.each_with_index do |ea, i|
      @even_awards.push(ea) if (i % 2) == 0 or ea.id == 0
      @odd_awards.push(ea) if (i % 2) > 0
    end
  end

  # GET /external_awards/1
  # GET /external_awards/1.json
  def show
  end

  # GET /external_awards/new
  def new
    @external_award = ExternalAward.new
  end

  # GET /external_awards/1/edit
  def edit
  end

  # POST /external_awards
  # POST /external_awards.json
  def create
    @external_award = ExternalAward.new(external_award_params)

    respond_to do |format|
      if @external_award.save
        format.html { redirect_to @external_award, notice: 'Record was successfully created.' }
        format.json { render :show, status: :created, location: @external_award }
      else
        format.html { render :new }
        format.json { render json: @external_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_awards/1
  # PATCH/PUT /external_awards/1.json
  def update
    respond_to do |format|
      if @external_award.update(external_award_params)
        format.html { redirect_to @external_award, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_award }
      else
        format.html { render :edit }
        format.json { render json: @external_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_awards/1
  # DELETE /external_awards/1.json
  def destroy
    @external_award.destroy
    respond_to do |format|
      format.html { redirect_to external_awards_url, notice: 'External award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_award
      @external_award = ExternalAward.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_award_params
      params.require(:external_award).permit(:skater_id, :award, :web_site, :year)
    end
end
