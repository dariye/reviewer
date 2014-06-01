class ReviewsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @review = @course.reviews.create(review_params)
    redirect_to course_path(@course)
    #/auth/google_oauth2

  end

  def new
    @course = Course.find(params[:course_id])
    @review = Review.new
  end

  def destroy
  end

  private
    def review_params
      params.require(:review).permit(:body, :rating, :name, :email)
    end
end
