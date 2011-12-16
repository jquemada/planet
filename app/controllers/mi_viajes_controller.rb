include MiViajesHelper


class MiViajesController < ApplicationController
  helper MiViajesHelper
  
  # GET /mi_viajes
  # GET /mi_viajes.json
  def index
    #@mi_viajes = MiViaje.all
    @mi_viajes = MiViaje.find(:all, :order => :order_in_trip)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mi_viajes }
    end
  end

  # GET /mi_viajes/1
  # GET /mi_viajes/1.json
  def show
    @mi_viaje = MiViaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mi_viaje }
    end
  end

  # GET /mi_viajes/new
  # GET /mi_viajes/new.json
  def new
    @mi_viaje = MiViaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mi_viaje }
    end
  end

  # GET /mi_viajes/edit
  # Diferente de la original porque se editan todos a la vez!!!!!!!
  def edit
    @mi_viajes = MiViaje.find(:all, :order => :order_in_trip)
  end

  # POST /mi_viajes
  # POST /mi_viajes.json
  def create
      @mi_viaje = MiViaje.new(params[:mi_viaje])
      if @mi_viaje.order_in_trip.nil?
	newOrderInTrip=MiViaje.maximum('order_in_trip')
	newOrderInTrip=0 if newOrderInTrip.nil?
	@mi_viaje.order_in_trip = newOrderInTrip+1 
      end
      respond_to do |format|
	if @mi_viaje.save
	  format.html { redirect_to @mi_viaje.site, notice: 'Successfully included.' }
	  format.json { render json: @mi_viaje.site, status: :created, location: @mi_viaje }
	else
	  format.html { render action: "new" }
	  format.json { render json: @mi_viaje.errors, status: :unprocessable_entity }
	end
    end
  end

  # PUT /mi_viajes/1
  # PUT /mi_viajes/1.json
  def update
    @mi_viaje = MiViaje.find(params[:id])

    respond_to do |format|
      if @mi_viaje.update_attributes(params[:mi_viaje])
        format.html { redirect_to @mi_viaje, notice: 'Mi viaje was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mi_viaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mi_viajes/1
  # DELETE /mi_viajes/1.json
  def destroy
    @mi_viaje = MiViaje.find(params[:id])
    @mi_viaje.destroy

    respond_to do |format|
      format.html { redirect_to edit_mi_viajes_url }
      format.json { head :ok }
    end
  end
  
  #Para intercambiar dos posiciones
  #Si no se facilita un nuevo_id, no hace nada
  def swap
    @mi_viaje = MiViaje.find(params[:id])
    if not (params[:nuevo_id].nil? or params[:nuevo_id].empty?)
      @mi_otro_viaje = MiViaje.find(params[:nuevo_id])
      orderIntercambio = @mi_viaje.order_in_trip
      @mi_viaje.order_in_trip=@mi_otro_viaje.order_in_trip
      @mi_otro_viaje.order_in_trip=orderIntercambio
    end
    respond_to do |format|
      if @mi_viaje.save and @mi_otro_viaje.save
	format.html { redirect_to edit_mi_viajes_path}
	format.json { head :ok }
      else
	format.html { render action: "edit" }
	format.json { render json: @mi_viaje.errors, status: :unprocessable_entity }
      end
    end
  
  end
end
