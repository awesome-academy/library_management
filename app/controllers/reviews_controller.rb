class ReviewsController < ApplicationController
  before_action :load_review, only: :destroy

  def show
    respond_to do |format|
      format.js
    end
  end

  def create
    @review = Review.new review_params
    if @review.save
      @book = @review.book
      flash[:success] = t "review.successful"
    else
      @book = Array.new
      flash[:danger] = t "review.fails"
    end
    respond_to do |format|
      format.js {}
    end
  end

  def destroy
    if @review.destroy
      @book = @review.book
      flash[:success] = t "review.delete"
    else
      @book = Array.new
      flash[:danger] = t "review.fails"
    end
    respond_to do |format|
      format.js {}
    end
  end

  private

  def review_params
    params.require(:review).permit :content, :user_id, :book_id
  end

  def load_review
    @review = Review.find_by id: params[:id]
    return if @review
    flash[:danger] = t "messenger.no_data"
    redirect_to tour_path @review.book_id
  end
end
