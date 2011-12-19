class TripsController < ApplicationController
  # GET /trips
  # GET /trips.json
  def index
    # Get default trip and render the `show` action
    @trip = Trip.find_or_create_by_name('default')

    render :action => :show, :id => @trip.id
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @trip = Trip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/new
  # GET /trips/new.json
  def new
    @trip = Trip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/1/edit
  def edit
    @trip = Trip.find(params[:id])
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(params[:trip])

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render json: @trip, status: :created, location: @trip }
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trips/1
  # PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])

    respond_to do |format|
      if @trip.update_attributes(params[:trip])
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :ok }
    end
  end

  # POST /trips/1/add_site
  def add_site
    @trip = Trip.find(params[:id])
    @site = Site.find(params[:site_id])

	unless @trip.sites.where(:id => @site.id).present?
      @trip.add_site(@site)
	  @trip.save
	end

    respond_to do |format|
	  format.html { redirect_to @site, notice: 'The site was successfully added to your trip.' }
	  format.json { head :ok }
	end
  end

  # POST /trips/1/update_site
  def update_site
    @trip = Trip.find(params[:id])
	@trip_site = TripSite.find_by_site_id_and_trip_id(params[:site_id], params[:id])
	
	old_pos = @trip_site.number
    new_pos = Integer(params[:new_pos])
	
	if(new_pos > old_pos)
    	@trip.trip_sites.update_all('number = number - 1', ['number > ? AND number <= ?', old_pos, new_pos])
	else
    	@trip.trip_sites.update_all('number = number + 1', ['number < ? AND number >= ?', old_pos, new_pos])
	end
	@trip_site.number = new_pos
	
	@trip.save
	@trip_site.save

	redirect_to :action => 'edit', :id => @trip.id
  end

end
