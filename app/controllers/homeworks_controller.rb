class HomeworksController < ApplicationController
  before_action :set_homework, only: [:show, :edit, :update, :destroy]

  # GET /homeworks
  def index
    @homeworks = Homework.all
  end

  # GET /homeworks/1
  def show
  end

  # GET /homeworks/new
  def new
    @homework = Homework.new
  end

  # GET /homeworks/1/edit
  def edit
  end

  # POST /homeworks
  def create
    @homework = Homework.new(homework_params)

    if @homework.save
      redirect_to @homework, notice: 'Homework was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homeworks/1
  def update
    if @homework.update(homework_params)
      redirect_to @homework, notice: 'Homework was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homeworks/1
  def destroy
    @homework.destroy
    redirect_to homeworks_url, notice: 'Homework was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework
      @homework = Homework.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def homework_params
      params.require(:homework).permit(:name)
    end
end
