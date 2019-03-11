class Admin::PublishersController < ApplicationController
  before_action :load_publisher, except: %i(index create new)
  before_action :load_publishers, only: %i(index create update destroy)

  def index; end

  def show; end

  def get_publisher; end

  def new
    @publisher = Publisher.new
  end

  def create
    if @publisher = Publisher.create(publisher_params)
      flash[:success] = t ".msg-create"
    else
      flash[:danger] = t ".msg-error"
    end
    respond_to do |format|
      format.js {}
    end
  end

  def edit; end

  private

  def load_publishers
    @search = Publisher.newest.ransack params[:q]
    @publishers = @search.result.paginate page: params[:page],
      per_page: Settings.user.per_page
  end

  def load_publisher
    @publisher = Publisher.find_by id: params[:publisher_id] if
      params[:publisher_id].present?
    @publisher = Publisher.find_by id: params[:id] if params[:id].present?
    return if @publisher
    respond_to do |format|
      flash[:danger] = t(".msg-not_found")
      format.js{render partial: "not_found"}
    end
  end

  def publisher_params
    params.require(:publisher).permit :name, :address
  end
end
