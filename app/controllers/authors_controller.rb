class AuthorsController < ApplicationController
  def index
    @search = Author.ransack params[:q]
    @authors = @search.result.newest.paginate page: params[:page],
      per_page: Settings.book.per_page
    respond_to do |format|
      format.html
      format.js
    end
  end
end
