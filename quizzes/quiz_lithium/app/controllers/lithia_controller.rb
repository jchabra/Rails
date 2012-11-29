class LithiaController < ApplicationController
  # GET /lithia
  # GET /lithia.json
  def index
    @lithia = Lithium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lithia }
    end
  end

  # GET /lithia/1
  # GET /lithia/1.json
  def show
    @lithium = Lithium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lithium }
    end
  end

  # GET /lithia/new
  # GET /lithia/new.json
  def new
    @lithium = Lithium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lithium }
    end
  end

  # GET /lithia/1/edit
  def edit
    @lithium = Lithium.find(params[:id])
  end

  # POST /lithia
  # POST /lithia.json
  def create
    @lithium = Lithium.new(params[:lithium])

    respond_to do |format|
      if @lithium.save
        format.html { redirect_to @lithium, notice: 'Lithium was successfully created.' }
        format.json { render json: @lithium, status: :created, location: @lithium }
      else
        format.html { render action: "new" }
        format.json { render json: @lithium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lithia/1
  # PUT /lithia/1.json
  def update
    @lithium = Lithium.find(params[:id])

    respond_to do |format|
      if @lithium.update_attributes(params[:lithium])
        format.html { redirect_to @lithium, notice: 'Lithium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lithium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lithia/1
  # DELETE /lithia/1.json
  def destroy
    @lithium = Lithium.find(params[:id])
    @lithium.destroy

    respond_to do |format|
      format.html { redirect_to lithia_url }
      format.json { head :no_content }
    end
  end
end
