class AuthorsController < ApplicationController
  before_action :load_author, only: :show

  def index
    @search = Author.ransack params[:q]
    @authors = @search.result.newest.paginate page: params[:page],
      per_page: Settings.book.per_page
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show; end

  private

  def load_author
    @author = Author.find_by id: params[:id]
    return if @author
    flash[:danger] = t "messenger.no_data"
    render :index
  end
end
