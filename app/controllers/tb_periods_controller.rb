class TbPeriodsController < ApplicationController
  # GET /tb_periods
  # GET /tb_periods.json
  def index
    @tb_periods = TbPeriod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tb_periods }
    end
  end

  # GET /tb_periods/1
  # GET /tb_periods/1.json
  def show
    @tb_period = TbPeriod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tb_period }
    end
  end

  # GET /tb_periods/new
  # GET /tb_periods/new.json
  def new
    @tb_period = TbPeriod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tb_period }
    end
  end

  # GET /tb_periods/1/edit
  def edit
    @tb_period = TbPeriod.find(params[:id])
  end

  # POST /tb_periods
  # POST /tb_periods.json
  def create
    @tb_period = TbPeriod.new(params[:tb_period])

    respond_to do |format|
      if @tb_period.save
        format.html { redirect_to @tb_period, notice: 'Tb period was successfully created.' }
        format.json { render json: @tb_period, status: :created, location: @tb_period }
      else
        format.html { render action: "new" }
        format.json { render json: @tb_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tb_periods/1
  # PUT /tb_periods/1.json
  def update
    @tb_period = TbPeriod.find(params[:id])

    respond_to do |format|
      if @tb_period.update_attributes(params[:tb_period])
        format.html { redirect_to @tb_period, notice: 'Tb period was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tb_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_periods/1
  # DELETE /tb_periods/1.json
  def destroy
    @tb_period = TbPeriod.find(params[:id])
    @tb_period.destroy

    respond_to do |format|
      format.html { redirect_to tb_periods_url }
      format.json { head :no_content }
    end
  end
end
