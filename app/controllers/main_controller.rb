class MainController < ApplicationController
  def index
    @career = Career.first
    @courses = @career.courses
  end

  def course
    @course = Course.find(params[:id])
    @lessons = @course.lessons.order("id ASC")
    @lesson = @lessons.first
  end

  def lesson
    @lesson = Lesson.find(params[:id])
  end
end
