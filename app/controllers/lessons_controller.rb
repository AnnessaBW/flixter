class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson, only: [:show]
  
  def show 
    @lesson = current_lesson.section.course
  end
  
  private
    
    def require_authorized_for_current_lesson
      if current_user.enrolled_in?(@current_course) != true
        return redirect_to courses_path(@current_course), alert: 'You must be enrolled.'
      end
    end
    
 
  helper_method :current_lesson
    def current_lesson
      @current_lesson ||=Lesson.find(params[:lesson_id])
    end
  end

