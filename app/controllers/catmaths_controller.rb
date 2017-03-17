class CatmathsController < ApplicationController
  before_action :set_catmath, only: [:show, :edit, :update, :destroy]

  # GET /catmaths
  # GET /catmaths.json
  def index
    @catmaths = Catmath.all
  end

  # GET /catmaths/1
  # GET /catmaths/1.json
  def show
  end

  # GET /catmaths/new
  def new
    @catmath = Catmath.new
  end

  # GET /catmaths/1/edit
  def edit
  end

  # POST /catmaths
  # POST /catmaths.json
  def create
    @catmath = Catmath.new(catmath_params)

    respond_to do |format|
      if @catmath.save
        format.html { redirect_to @catmath, notice: 'Catmath was successfully created.' }
        format.json { render :show, status: :created, location: @catmath }
      else
        format.html { render :new }
        format.json { render json: @catmath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catmaths/1
  # PATCH/PUT /catmaths/1.json
  def update
    respond_to do |format|
      if @catmath.update(catmath_params)
        format.html { redirect_to @catmath, notice: 'Catmath was successfully updated.' }
        format.json { render :show, status: :ok, location: @catmath }
      else
        format.html { render :edit }
        format.json { render json: @catmath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catmaths/1
  # DELETE /catmaths/1.json
  def destroy
    @catmath.destroy
    respond_to do |format|
      format.html { redirect_to catmaths_url, notice: 'Catmath was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catmath
      @catmath = Catmath.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catmath_params
      params.require(:catmath).permit(:topic, :question)
    end
end
