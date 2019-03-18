class Admin::AuthorsController < ApplicationController
  before_action :load_author, except: %i(index create new)
  before_action :load_authors, only: %i(index create update destroy)

  def index; end

  def show; end

  def get_author; end

  def new
    @author = Author.new
  end

  def create
    if @author = Author.create(author_params)
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
    if @author.update_attributes(author_params)
      flash[:success] = t(".msg-update")
    else
      flash[:danger] = t(".msg-error")
    end
    respond_to do |format|
      format.js {}
    end
  end

  def destroy
    if @author.destroy
      flash[:success] = t(".msg-destroy")
    else
      flash[:danger] = t(".msg-error")
    end
    respond_to do |format|
      format.js {}
    end
  end

  private

  def load_authors
    @search = Author.newest.ransack params[:q]
    @authors = @search.result.paginate page: params[:page],
    per_page: Settings.author.per_page
  end

  def load_author
    @author = Author.find_by id: params[:author_id] if
      params[:author_id].present?
    @author = Author.find_by id: params[:id] if params[:id].present?
    return if @author
    respond_to do |format|
      flash[:danger] = t(".msg-not_found")
      format.js{render partial: "not_found"}
    end
  end

  def author_params
    params.require(:author).permit :name, :profile, :avatar
  end
end
