class CoursesController < ApplicationController
  def index
    # @query = Course.search do
    #   fulltext params[:search]
    #   facet :course_name, :course_code, :course_desc
    # end
    # @courses = @query.results
    # @courses = Course.all
    if params[:search]
      @courses = Course.search(params[:search]).order("created_at DESC")
    else
      @courses = Course.order("created_at DESC")
    end
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
  end

  def show
   @course = Course.find(params[:id])
   @reviews = @course.reviews
  end

  def update
  end

  def destroy
  end

  private
    def course_params
      params.require(:course).permit(:course_name, :course_code, :course_desc, :course_website, :credit_value)
    end


end
