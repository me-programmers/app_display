class PasarsController < ApplicationController
  # GET /pasars
  # GET /pasars.json
  def index
    @pasars = Pasar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pasars }
    end
  end

  # GET /pasars/1
  # GET /pasars/1.json
  def show
    @pasar = Pasar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pasar }
    end
  end

  # GET /pasars/new
  # GET /pasars/new.json
  def new
    @pasar = Pasar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pasar }
    end
  end

  # GET /pasars/1/edit
  def edit
    @pasar = Pasar.find(params[:id])
  end

  # POST /pasars
  # POST /pasars.json
  def create
    @pasar = Pasar.new(params[:pasar])

    respond_to do |format|
      if @pasar.save
        format.html { redirect_to @pasar, notice: 'Pasar was successfully created.' }
        format.json { render json: @pasar, status: :created, location: @pasar }
      else
        format.html { render action: "new" }
        format.json { render json: @pasar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pasars/1
  # PUT /pasars/1.json
  def update
    @pasar = Pasar.find(params[:id])

    respond_to do |format|
      if @pasar.update_attributes(params[:pasar])
        format.html { redirect_to @pasar, notice: 'Pasar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pasar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pasars/1
  # DELETE /pasars/1.json
  def destroy
    @pasar = Pasar.find(params[:id])
    @pasar.destroy

    respond_to do |format|
      format.html { redirect_to pasars_url }
      format.json { head :no_content }
    end
  end
end
