class SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.new
  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new(section_params)
    if @section.save
      flash[:notice] = "Section has been saved!"
      redirect_to chapter_path(@chapter)
    else
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(section_params)
      flash[:notice] = "Your section has been updated!"
      redirect_to chapter_sections_path
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to chapters_path
  end

private
  def section_params
    params.require(:section).permit(:name, :chapter_id)
  end


end
