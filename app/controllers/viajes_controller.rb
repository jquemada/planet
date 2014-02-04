class ViajesController < ApplicationController
  # GET /viajes
  # GET /viajes.json
  def index
    #@viajes = Viaje.all
	@viajes = Viaje.find(:all, :order => :pos)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @viajes }
    end
  end

  # GET /viajes/1
  # GET /viajes/1.json
  def show
    @viaje = Viaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @viaje }
    end
  end

  # GET /viajes/1/new
  # GET /viajes/1/new.json
  def new
    @viaje = Viaje.new	
    @viaje.site_ide = params[:id]
	@viaje.pos = 99
	respond_to do |format|
      if @viaje.save
        format.html { redirect_to viajes_url, notice: 'Viaje was successfully created.' }
        format.json { head :ok }
      else
        format.html { redirect_to viajes_url, notice: 'Viaje was unsuccessfully created.' }
        format.json { head :ok }
      end
    end
	
 
  end

  # GET /viajes/1/edit
  def edit
    @viaje = Viaje.find(params[:id])
  end

  # POST /viajes
  # POST /viajes.json
  def create
    @viaje = Viaje.new(params[:viaje])

    respond_to do |format|
      if @viaje.save
        format.html { redirect_to @viaje, notice: 'Viaje was successfully created.' }
        format.json { render json: @viaje, status: :created, location: @viaje }
      else
        format.html { render action: "new" }
        format.json { render json: @viaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /viajes/1
  # PUT /viajes/1.json
  def update
    @viaje = Viaje.find(params[:id])

    respond_to do |format|
      if @viaje.update_attributes(params[:viaje])
        format.html { redirect_to @viaje, notice: 'Viaje was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @viaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viajes/1
  # DELETE /viajes/1.json
  def destroy
    @viaje = Viaje.find(params[:id])
    @viaje.destroy

    respond_to do |format|
      format.html { redirect_to viajes_url }
      format.json { head :ok }
    end
  end
end
