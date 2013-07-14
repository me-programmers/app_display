class MarketComparisonsController < ApplicationController
  # GET /market_comparisons
  # GET /market_comparisons.json
  def index
    @market_comparisons = MarketComparison.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @market_comparisons }
    end
  end

  # GET /market_comparisons/1
  # GET /market_comparisons/1.json
  def show
    @market_comparison = MarketComparison.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @market_comparison }
    end
  end

  # GET /market_comparisons/new
  # GET /market_comparisons/new.json
  def new
    @market_comparison = MarketComparison.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @market_comparison }
    end
  end

  # GET /market_comparisons/1/edit
  def edit
    @market_comparison = MarketComparison.find(params[:id])
  end

  # POST /market_comparisons
  # POST /market_comparisons.json
  def create
    @market_comparison = MarketComparison.new(params[:market_comparison])

    respond_to do |format|
      if @market_comparison.save
        format.html { redirect_to @market_comparison, notice: 'Market comparison was successfully created.' }
        format.json { render json: @market_comparison, status: :created, location: @market_comparison }
      else
        format.html { render action: "new" }
        format.json { render json: @market_comparison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /market_comparisons/1
  # PUT /market_comparisons/1.json
  def update
    @market_comparison = MarketComparison.find(params[:id])

    respond_to do |format|
      if @market_comparison.update_attributes(params[:market_comparison])
        format.html { redirect_to @market_comparison, notice: 'Harga Komoditi berhasil di update.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @market_comparison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_comparisons/1
  # DELETE /market_comparisons/1.json
  def destroy
    @market_comparison = MarketComparison.find(params[:id])
    @market_comparison.destroy

    respond_to do |format|
      format.html { redirect_to market_comparisons_url }
      format.json { head :no_content }
    end
  end
end
