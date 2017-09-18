class AttractionsController < ApplicationController
  
  before_action :attraction, only: [:edit, :show]

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    return redirect_to new_attraction_path unless @attraction.save
    redirect_to attraction_path(@attraction)
  end

  def edit
  end

  def show
  end
  
  private
  
  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end

  def attraction
    @attraction = Attraction.find_by(id: params[:id])
  end
end
