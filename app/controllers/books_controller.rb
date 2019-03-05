class BooksController < ApplicationController
  before_action :load_book, only: :show
  before_action :load_category, only: :index

  def index
    @search = Book.ransack params[:q]
    @books = @search.result.newest.paginate page: params[:page],
      per_page: Settings.book.per_page
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show; end

  private

  def load_book
    @book = Book.find_by id: params[:id]
    return if @book
    flash[:danger] = t "messenger.no_data"
    render :index
  end

  def load_category
    @category = Category.sort_by_name
  end
end
