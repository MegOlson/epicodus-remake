class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def new
    @section = Section.find(params[:section_id])
    @lesson = Lesson.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson has been saved!"
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      flash[:notice] = "Your lesson as been updated!"
      redirect_to section_lessons_path
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to sections_path
  end

private
  def lesson_params
    params.require(:lesson).permit(:name, :content, :number, :section_id)
  end


end
