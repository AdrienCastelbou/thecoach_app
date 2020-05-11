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
    @coach.update(description: params[:description])
    puts "@@@@@@@@"
    puts params[:city]
    if params[:sphere_id] != "" && @coach.spheres << Sphere.find(params[:sphere_id])
    end
    redirect_to coach_path(@coach), notice: "Les modifications ont été enregistrées."

  end

  def destroy
    
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  #def coach_params
  #  params.require(:coach).permit(:description, :sphere_id, :city)
  #end

end
