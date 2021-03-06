class ExcursionsController < ApplicationController
  # GET /excursions
  # GET /excursions.json
  def index
    @excursions = Excursion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @excursions }
    end
  end

  # GET /excursions/1
  # GET /excursions/1.json
  def show

    @locations = Location.all 
    @tourlocate = Assignment.first
    @customer = Customer.new
    @excursion = Excursion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @excursion }
    end
  end

  def active_tours
    #@excursions = Excursion.all
    @excursions = Excursion.active

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mobay }
    end
  end

  def cultural_tours
    #@excursions = Excursion.all
    @excursions = Excursion.culture

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mobay }
    end
  end



  def show_tours
    #@excursions = Excursion.all
    @mobay = Excursion.mobay

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @excursion }
    end
  end

  def mobay_tours
    #@excursions = Excursion.all
    @mobay = Excursion.mobay

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mobay }
    end
  end

  def ochi_tours
    #@excursions = Excursion.all
    @ochi = Excursion.ochi

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ochi }
    end
  end

  def falmouth_tours
    #@excursions = Excursion.all
    @falmouth = Excursion.falmouth

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @falmouth }
    end
  end


  # GET /excursions/new
  # GET /excursions/new.json
  def new
    @excursion = Excursion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @excursion }
    end
  end

  # GET /excursions/1/edit
  def edit
    @excursion = Excursion.find(params[:id])
  end

  # POST /excursions
  # POST /excursions.json
  def create
    @excursion = Excursion.new(params[:excursion])

    respond_to do |format|
      if @excursion.save
        format.html { redirect_to @excursion, notice: 'Excursion was successfully created.' }
        format.json { render json: @excursion, status: :created, location: @excursion }
      else
        format.html { render action: "new" }
        format.json { render json: @excursion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /excursions/1
  # PUT /excursions/1.json
  def update
    @excursion = Excursion.find(params[:id])

    respond_to do |format|
      if @excursion.update_attributes(params[:excursion])
        format.html { redirect_to @excursion, notice: 'Excursion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @excursion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excursions/1
  # DELETE /excursions/1.json
  def destroy
    @excursion = Excursion.find(params[:id])
    @excursion.destroy

    respond_to do |format|
      format.html { redirect_to excursions_url }
      format.json { head :no_content }
    end
  end
end
