class SelectedsController < ApplicationController
  # GET /selecteds
  # GET /selecteds.json
  def index
    @selecteds = Selected.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selecteds }
    end
  end

  # GET /selecteds/1
  # GET /selecteds/1.json
  def show
    @selected = Selected.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @selected }
    end
  end

  # GET /selecteds/new
  # GET /selecteds/new.json
  def new
    @selected = Selected.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @selected }
    end
  end

  # GET /selecteds/1/edit
  def edit
    @selected = Selected.find(params[:id])
  end

  # POST /selecteds
  # POST /selecteds.json
  def create
    @selected = Selected.new(params[:selected])

    respond_to do |format|
      if @selected.save
        format.html { redirect_to @selected.trip, notice: 'Selected was successfully created.' }
        format.json { render json: @selected, status: :created, location: @selected }
      else
        format.html { render action: "new" }
        format.json { render json: @selected.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selecteds/1
  # PUT /selecteds/1.json
  def update
    @selected = Selected.find(params[:id])

    respond_to do |format|
      if @selected.update_attributes(params[:selected])
        format.html { redirect_to @selected.trip    , notice: 'Selected was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @selected.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selecteds/1
  # DELETE /selecteds/1.json
  def destroy
    @selected = Selected.find(params[:id])
    @selected.destroy

    respond_to do |format|
      format.html { redirect_to @selected.trip }
#     format.html { redirect_to selecteds_url }
      format.json { head :ok }
    end
  end
end
