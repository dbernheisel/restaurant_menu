class CoursePhotosController < ApplicationController
  before_action :set_course_photo, only: [:show, :edit, :update, :destroy]

  # GET /course_photos
  # GET /course_photos.json
  def index
    @course_photos = CoursePhoto.all
  end

  # GET /course_photos/1
  # GET /course_photos/1.json
  def show
  end

  # GET /course_photos/new
  def new
    @course_photo = CoursePhoto.new
  end

  # GET /course_photos/1/edit
  def edit
  end

  # POST /course_photos
  # POST /course_photos.json
  def create
    @course_photo = CoursePhoto.new(course_photo_params)

    respond_to do |format|
      if @course_photo.save
        format.html { redirect_to @course_photo, notice: 'Course photo was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /course_photos/1
  # PATCH/PUT /course_photos/1.json
  def update
    respond_to do |format|
      if @course_photo.update(course_photo_params)
        format.html { redirect_to @course_photo, notice: 'Course photo was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /course_photos/1
  # DELETE /course_photos/1.json
  def destroy
    @course_photo.destroy
    respond_to do |format|
      format.html { redirect_to course_photos_url, notice: 'Course photo was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_photo
      @course_photo = CoursePhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_photo_params
      params.require(:course_photo).permit(:photo_id, :course_id)
    end
end
