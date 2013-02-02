class CategoriesController < ApplicationController
  # GET /categories.json
  def index
    @categories = Category.all

    respond_to do |format|
      format.json { render json: @categories.as_json(:only => [:name, :id], :include => { :tags => {:only => [:name, :id]} }) }
    end
  end

  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.json { render json: @category.to_json(:include => :tags) }
    end
  end

  # GET /categories/new.json
  def new
    @category = Category.new

    respond_to do |format|
      format.json { render json: @category }
    end
  end

  # POST /categories.json
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.json { render json: @category, status: :created, location: @category }
      else
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1.json
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.json { head :no_content }
      else
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
