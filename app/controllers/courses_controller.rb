class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_course, only: [:edit, :update, :destroy]
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = current_user.courses.build(course_params)
    if @course.save
      redirect_to courses_path, notice: "新增課程成功"
    else
      render :new
    end

  end

  def show
    
  end

  def edit
    
  end

  def update
    if @course.update(course_params)
      redirect_to courses_path, notice: "編輯課程成功"
    else
      render :edit
    end
  end

  def destroy
    @course.destroy(course_params)
    redirect_to courses_path, notice: "刪除課程成功"
  end

  private 

  def set_course
    @course = current_user.courses.find(params[:id])
  end
    
  def course_params
    params.require(:course).permit(:theme, :price, :category, :shelf, :intro, :valid_date, :start_date)
  end
end
