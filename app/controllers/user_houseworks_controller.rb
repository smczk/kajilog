class UserHouseworksController < ApplicationController
  before_action :set_user_housework, only: [:show, :edit, :update, :destroy]

  # GET /user_houseworks
  def index
    user_houseworks = UserHousework.where(user_id: current_user)
    @user_houseworks = user_houseworks.reverse
    @user_houseworks_with_counts = user_houseworks
                                    .joins(:housework)
                                    .group("houseworks.name")
                                    .order('count_housework_id desc')
                                    .count('housework_id')
  end

  # GET /user_houseworks/1
  def show
  end

  # GET /user_houseworks/new
  def new
    @user_housework = UserHousework.new
  end

  # GET /user_houseworks/1/edit
  def edit
  end

  # POST /user_houseworks
  def create
    @user_housework = UserHousework.new(user_housework_params)
    @user_housework.user_id = current_user.id if current_user

    if @user_housework.save
      redirect_to @user_housework, notice: 'User housework was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_houseworks/1
  def update
    if @user_housework.update(user_housework_params)
      redirect_to @user_housework, notice: 'User housework was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_houseworks/1
  def destroy
    @user_housework.destroy
    redirect_to user_houseworks_url, notice: 'User housework was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_housework
      @user_housework = UserHousework.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_housework_params
      params.require(:user_housework).permit(:housework_id)
    end
end
