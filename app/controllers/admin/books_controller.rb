class Admin::BooksController < ApplicationController
  before_action :get_book, except: %i(index create new)
  before_action :load_books, only: %i(index create update destroy)

  def index; end

  def show; end

  def delete; end

  def new
    @book = Book.new
    @book.author_books.build
  end

  def create
    if @book = Book.create(book_params)
      flash[:success] = t(".msg-create")
    else
      flash[:danger] = t(".msg-error")
    end
    respond_to do |format|
      format.js {}
    end
  end

  def edit; end

  def update
    if @book.update_attributes(book_params)
      flash[:success] = t(".msg-update")
    else
      flash[:danger] = t(".msg-error")
    end
    respond_to do |format|
      format.js {}
    end
  end

  def destroy
    if @book.destroy
      flash[:succsee] = t(".msg-destroy")
    else
      flash[succsess] = t(".msg-error")
    end
    repond_to do |format|
      format.js {}
    end
  end

  private

  def load_books
    @search = Book.newest.ransack params[:q]
    @books = @search.result.paginate page: params[:page],
    per_page: Settings.book.per_page
  end

  def get_book
    @book = Book.find_by id: params[:book_id] if params[:book_id].present?
    @book = Book.find_by id: params[:id] if params[:id].present?
    return if @user
    respond_to do |format|
      flash.now[:danger] = t(".msg-not_found")
      format.js{render partial: "not_found"}
    end
  end

  def book_params
    params.require(:book).permit :category_id, :publisher_id, :name,
      :content, :quantity_of_pages, :publishing_year, :quantity_of_books,
      :image, author_books_attributes: [:author_id, :book_id]
  end
end
