class CoursesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :check_role
  before_action :set_course, only: %i[edit update destroy]
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
    @course.destroy
    redirect_to courses_path, notice: "刪除課程成功"
  end

  private 

  def set_course
    if current_user.courses.ids.include?(params[:id].to_i) 
      @course = current_user.courses.find(params[:id])
    else
      redirect_to courses_path, notice: "你沒有此課程編輯權限"
    end
  end
    
  def course_params
    params.require(:courses).permit(:theme, :price, :category, :shelf, :intro, :valid_date, :start_date)
  end

  def check_role
    unless current_user.role == "admin"
      redirect_to root_path, notice:"您非課程管理員，請先註冊成為課程管理員"
    end
  end
end
