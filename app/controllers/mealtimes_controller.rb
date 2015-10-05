class MealtimesController < ApplicationController
  before_action :set_mealtime, only: [:show, :edit, :update, :destroy]

  # GET /mealtimes
  # GET /mealtimes.json
  def index
    @mealtimes = Mealtime.all
  end

  # GET /mealtimes/1
  # GET /mealtimes/1.json
  def show
  end

  # GET /mealtimes/new
  def new
    @mealtime = Mealtime.new
  end

  # GET /mealtimes/1/edit
  def edit
  end

  # POST /mealtimes
  # POST /mealtimes.json
  def create
    @mealtime = Mealtime.new(mealtime_params)

    respond_to do |format|
      if @mealtime.save
        format.html { redirect_to @mealtime, notice: 'Mealtime was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /mealtimes/1
  # PATCH/PUT /mealtimes/1.json
  def update
    respond_to do |format|
      if @mealtime.update(mealtime_params)
        format.html { redirect_to @mealtime, notice: 'Mealtime was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /mealtimes/1
  # DELETE /mealtimes/1.json
  def destroy
    @mealtime.destroy
    respond_to do |format|
      format.html { redirect_to mealtimes_url, notice: 'Mealtime was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mealtime
      @mealtime = Mealtime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mealtime_params
      params.require(:mealtime).permit(:name)
    end
end
