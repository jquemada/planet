class TripSitesController < ApplicationController
  # GET /trip_sites
  # GET /trip_sites.json
  def index
    @trip_sites = TripSite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trip_sites }
    end
  end

  # GET /trip_sites/1
  # GET /trip_sites/1.json
  def show
    @trip_site = TripSite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip_site }
    end
  end

  # GET /trip_sites/new
  # GET /trip_sites/new.json
  def new
    @trip_site = TripSite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip_site }
    end
  end

  # GET /trip_sites/1/edit
  def edit
    @trip_site = TripSite.find(params[:id])
  end

  # POST /trip_sites
  # POST /trip_sites.json
  def create
    @trip_site = TripSite.new(params[:trip_site])

    respond_to do |format|
      if @trip_site.save
        format.html { redirect_to @trip_site, notice: 'Trip site was successfully created.' }
        format.json { render json: @trip_site, status: :created, location: @trip_site }
      else
        format.html { render action: "new" }
        format.json { render json: @trip_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trip_sites/1
  # PUT /trip_sites/1.json
  def update
    @trip_site = TripSite.find(params[:id])

    respond_to do |format|
      if @trip_site.update_attributes(params[:trip_site])
        format.html { redirect_to @trip_site, notice: 'Trip site was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_sites/1
  # DELETE /trip_sites/1.json
  def destroy
    @trip_site = TripSite.find(params[:id])
    @trip_site.destroy

    respond_to do |format|
      format.html { redirect_to trip_sites_url }
      format.json { head :ok }
    end
  end
end
