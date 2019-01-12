class ImagesController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @course.image.create(image_params.merge(course: current_course))
    redirect_to course_path(@course)
    
  end
 private
 
  def image_params
    params.require(:image).permit(:picture, :caption)
  end
end