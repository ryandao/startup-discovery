class StartupsController < ApplicationController
  # GET /startups.json
  def index
    if params[:tags]
      @startups = Startup.have_tags(params[:tags])
    else
      @startups = Startup.all
    end

    respond_to do |format|
      format.json { render json: @startups }
    end
  end

  # GET /startups/1.json
  def show
    @startup = Startup.find(params[:id])

    respond_to do |format|
      format.json { render json: @startup }
    end
  end

  # POST /startups.json
  def create
    @startup = Startup.new(params[:startup])

    respond_to do |format|
      if @startup.save
        format.json { render json: @startup, status: :created, location: @startup }
      else
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /startups/1.json
  def update
    @startup = Startup.find(params[:id])

    respond_to do |format|
      if @startup.update_attributes(params[:startup])
        format.json { head :no_content }
      else
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1.json
  def destroy
    @startup = Startup.find(params[:id])
    @startup.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
