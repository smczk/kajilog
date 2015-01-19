class HouseworksController < ApplicationController
  before_action :set_housework, only: [:show, :edit, :update, :destroy]

  # GET /houseworks
  def index
    @houseworks = Housework.all
  end

  # GET /houseworks/1
  def show
  end

  # GET /houseworks/new
  def new
    @housework = Housework.new
  end

  # GET /houseworks/1/edit
  def edit
  end

  # POST /houseworks
  def create
    @housework = Housework.new(housework_params)

    if @housework.save
      redirect_to @housework, notice: 'Housework was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /houseworks/1
  def update
    if @housework.update(housework_params)
      redirect_to @housework, notice: 'Housework was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /houseworks/1
  def destroy
    @housework.destroy
    redirect_to houseworks_url, notice: 'Housework was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housework
      @housework = Housework.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def housework_params
      params.require(:housework).permit(:name)
    end
end
