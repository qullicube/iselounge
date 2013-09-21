class MakeRatingsController < ApplicationController
  before_action :set_make_rating, only: [:show, :edit, :update, :destroy]

  # GET /make_ratings
  # GET /make_ratings.json
  def index
    @make_ratings = MakeRating.all
  end

  # GET /make_ratings/1
  # GET /make_ratings/1.json
  def show
  end

  # GET /make_ratings/new
  def new
    @make_rating = MakeRating.new
  end

  # GET /make_ratings/1/edit
  def edit
  end

  # POST /make_ratings
  # POST /make_ratings.json
  def create
    @make_rating = MakeRating.new(make_rating_params)

    respond_to do |format|
      if @make_rating.save
        format.html { redirect_to @make_rating, notice: 'Make rating was successfully created.' }
        format.json { render action: 'show', status: :created, location: @make_rating }
      else
        format.html { render action: 'new' }
        format.json { render json: @make_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /make_ratings/1
  # PATCH/PUT /make_ratings/1.json
  def update
    respond_to do |format|
      if @make_rating.update(make_rating_params)
        format.html { redirect_to @make_rating, notice: 'Make rating was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @make_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /make_ratings/1
  # DELETE /make_ratings/1.json
  def destroy
    @make_rating.destroy
    respond_to do |format|
      format.html { redirect_to make_ratings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_make_rating
      @make_rating = MakeRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def make_rating_params
      params[:make_rating]
    end
end
