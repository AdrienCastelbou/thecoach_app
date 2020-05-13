class ProgramsController < ApplicationController
  before_action :set_coach, only: [:show, :new, :create, :edit, :update, :destroy]
  before_action :set_program, only: [:show, :create, :edit, :update, :destroy]

  def index
    
  end

  def show
    
  end

  def new
    @program = Program.new
    @spheres = Sphere.all.map{|s| [ s.name, s.id ] }
  end

  def edit

  end

  def create
    @program = Program.new(coach: @coach, title: params[:title], description: params[:description])
    
    if set_coach_sphere && @program.save
      redirect_to coach_path(@coach),  :notice => "Le programme a bien été créé."
    else
      redirect_back(fallback_location: coach_path(@coach))
    end
  end

  def update

  end

  def destroy
    
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end

  def set_coach
    @coach = Coach.find(params[:coach_id])
  end

  def set_coach_sphere
    if params[:program_sphere_id] != "" && ProgramSphere.create(program: @program, sphere_id: params[:program_sphere_id])
      return true
    end
  end

end
