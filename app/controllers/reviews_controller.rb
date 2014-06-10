class ReviewsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create]
  # before_action :correct_user, only: [:edit, :update]
  def create
    @course = Course.find(params[:course_id])
    @review = @course.reviews.create(review_params)
    redirect_to course_path(@course)

  end


  def new
    @course = Course.find(params[:course_id])
    @review = Review.new
  end
  def edit

  end
  def update

  end

  def destroy
  end

  private
    def review_params
      params.require(:review).permit(:body, :rating, :name, :email)
    end

    def correct_user
      @user = User.find_by_id(params[:id])
      redirect_to root_path unless current_user?(@user)
    end

end
