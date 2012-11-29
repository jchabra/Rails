class HydrogensController < ApplicationController
  # GET /hydrogens
  # GET /hydrogens.json
  def index
    @hydrogens = Hydrogen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hydrogens }
    end
  end

  # GET /hydrogens/1
  # GET /hydrogens/1.json
  def show
    @hydrogen = Hydrogen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hydrogen }
    end
  end

  # GET /hydrogens/new
  # GET /hydrogens/new.json
  def new
    @hydrogen = Hydrogen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hydrogen }
    end
  end

  # GET /hydrogens/1/edit
  def edit
    @hydrogen = Hydrogen.find(params[:id])
  end

  # POST /hydrogens
  # POST /hydrogens.json
  def create
    @hydrogen = Hydrogen.new(params[:hydrogen])

    respond_to do |format|
      if @hydrogen.save
        format.html { redirect_to @hydrogen, notice: 'Hydrogen was successfully created.' }
        format.json { render json: @hydrogen, status: :created, location: @hydrogen }
      else
        format.html { render action: "new" }
        format.json { render json: @hydrogen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hydrogens/1
  # PUT /hydrogens/1.json
  def update
    @hydrogen = Hydrogen.find(params[:id])

    respond_to do |format|
      if @hydrogen.update_attributes(params[:hydrogen])
        format.html { redirect_to @hydrogen, notice: 'Hydrogen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hydrogen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hydrogens/1
  # DELETE /hydrogens/1.json
  def destroy
    @hydrogen = Hydrogen.find(params[:id])
    @hydrogen.destroy

    respond_to do |format|
      format.html { redirect_to hydrogens_url }
      format.json { head :no_content }
    end
  end
end
