class Admin::UsersController < ApplicationController
  before_action :load_user, except: %i(index create new)
  before_action :load_users, only: %i(index create update destroy)

  def index; end

  def show; end

  def new
    @user = User.new
  end

  def create
    if @user = User.create(user_params)
      respond_to do |format|
        flash[:success] = t(".msg-create")
        format.js {}
      end
    else
      my_erorr
    end
  end

  def edit; end

  def update
    if @user.update_attributes(user_params)
      respond_to do |format|
        format.js {}
        flash[:success] = t(".msg-update")
      end
    else
      my_erorr
    end
  end

  def destroy
    if @user.destroy
      respond_to do |format|
        flash[:success] = t(".msg-delete")
        format.js {}
      end
    else
      my_erorr
    end
  end

  private

  def my_erorr
    respond_to do |format|
      flash[:success] = t(".msg-error")
      format.js {}
    end
  end

  def load_users
    @users = User.newest
  end

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    respond_to do |format|
      flash[:danger] = t(".msg-not_found")
      format.js {}
    end
  end

  def user_params
    params.require(:user).permit :name, :email, :date_of_birth, :gender,
      :phone, :address, :rote
  end
end
