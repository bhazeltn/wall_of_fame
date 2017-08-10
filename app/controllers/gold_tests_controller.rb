class GoldTestsController < ApplicationController
  before_action :set_gold_test, only: [:show, :edit, :update, :destroy]
  before_action :set_test_levels
  
  def set_test_levels
    @tests = 'Gold Freeskate', 'Gold Skills', 'Gold Intrepretive', 'Gold Dance', 'Diamond Dance'
  end

  # GET /gold_tests
  # GET /gold_tests.json
  def index
    @gold_tests = GoldTest.order(year: :desc)
    @years = GoldTest.pluck(:year).map{|x| x}.uniq.sort
    
  end

  # GET /gold_tests/1
  # GET /gold_tests/1.json
  def show
  end

  # GET /gold_tests/new
  def new
    @gold_test = GoldTest.new
  end

  # GET /gold_tests/1/edit
  def edit
  end

  # POST /gold_tests
  # POST /gold_tests.json
  def create
    @gold_test = GoldTest.new(gold_test_params)

    respond_to do |format|
      if @gold_test.save
        format.html { redirect_to @gold_test, notice: 'Gold test was successfully created.' }
        format.json { render :show, status: :created, location: @gold_test }
      else
        format.html { render :new }
        format.json { render json: @gold_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gold_tests/1
  # PATCH/PUT /gold_tests/1.json
  def update
    respond_to do |format|
      if @gold_test.update(gold_test_params)
        format.html { redirect_to @gold_test, notice: 'Gold test was successfully updated.' }
        format.json { render :show, status: :ok, location: @gold_test }
      else
        format.html { render :edit }
        format.json { render json: @gold_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gold_tests/1
  # DELETE /gold_tests/1.json
  def destroy
    @gold_test.destroy
    respond_to do |format|
      format.html { redirect_to gold_tests_url, notice: 'Gold test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gold_test
      @gold_test = GoldTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gold_test_params
      params.require(:gold_test).permit(:skater_id, :testLevel, :year)
    end
end
