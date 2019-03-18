module ReviewsHelper
  def load_review
    @book.reviews.build
  end
end
