class AuthorsController < ApplicationController
  def index
    @authors = Author.newest.paginate page: params[:page],
      per_page: Settings.book.per_page
  end
end
