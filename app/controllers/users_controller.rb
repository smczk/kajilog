class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :require_login, only: [:new, :create]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    unless @user == current_user
      redirect_to(:users)
    end
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to(:user_houseworks, notice: 'User was successfully created.')
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user == current_user && @user.update(user_params)
      redirect_to(:user, notice: 'User was successfully updated.')
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    if @user == current_user
      @user.destroy
    else
      redirect_to users_url, alert: 'You can not destroy it.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
