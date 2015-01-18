class UserHomeworksController < ApplicationController
  before_action :set_user_homework, only: [:show, :edit, :update, :destroy]

  # GET /user_homeworks
  def index
    @user_homeworks = UserHomework.all
  end

  # GET /user_homeworks/1
  def show
  end

  # GET /user_homeworks/new
  def new
    @user_homework = UserHomework.new
  end

  # GET /user_homeworks/1/edit
  def edit
  end

  # POST /user_homeworks
  def create
    @user_homework = UserHomework.new(user_homework_params)

    if @user_homework.save
      redirect_to @user_homework, notice: 'User homework was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /user_homeworks/1
  def update
    if @user_homework.update(user_homework_params)
      redirect_to @user_homework, notice: 'User homework was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_homeworks/1
  def destroy
    @user_homework.destroy
    redirect_to user_homeworks_url, notice: 'User homework was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_homework
      @user_homework = UserHomework.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_homework_params
      params[:user_homework]
    end
end
