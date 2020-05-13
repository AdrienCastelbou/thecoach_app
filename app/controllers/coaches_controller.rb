class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy]

  def index
    @coaches = Coach.all
  end
  def show

  end

  def new

  end

  def edit
    @spheres = Sphere.all.map{|s| [ s.name, s.id ] }
  end

  def create

  end

  def update
    if @coach.update(description: params[:description], city: coach_city)
      redirect_to coach_path(@coach),  :notice => "Votre profil a bien été modifié."
    else
      redirect_back(fallback_location: coach_path(@coach))
    end
  end

  def destroy
    
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  def coach_city
    city = params[:city]
    if @coach.city.name.downcase == city.downcase
      return @coach.city
    else
      City.all.each do |old_city|
        if old_city.name.downcase == city.downcase
          return old_city
        end
      end
      return City.create(name: city.capitalize)
    end
  end

end
