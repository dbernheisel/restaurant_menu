class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_action :set_course, only: [:edit, :new, :create]

  def all_courses
    @courses ||= Course.all
  end
  # GET /dishes
  def index
    @dishes = Dish.all
  end

  # GET /dishes/1
  def show
  end

  # GET /dishes/new
  def new
    @dish = Dish.new()
  end

  # GET /dishes/1/edit
  def edit
    set_course
    set_dish
  end

  # POST /dishes
  def create
    @dish = Dish.new(dish_params)

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: 'Dish was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /dishes/1
  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /dishes/1
  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to dishes_url, notice: 'Dish was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end
    def set_course
      @courses = all_courses
      @course = (@courses.find(params[:course_id]) if params[:course_id]) || @dish.course
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:name, :price, :course_id, :description)
    end
end
