class ProgramsController < ApplicationController
  before_action :set_coach, only: [:show, :new, :create, :edit, :update, :destroy]
  before_action :set_program, only: [:show, :edit, :update, :destroy]
  before_action :is_program_coach, only: [:edit, :update, :destroy, :new, :create]

  def index
    
  end

  def show
    
  end

  def new
    @program = Program.new
    @spheres = Sphere.all.map{|s| [ s.name, s.id ] }
  end

  def edit
    @spheres = Sphere.all.map{|s| [ s.name, s.id ] }
  end

  def create
    @program = Program.new(coach: @coach, title: params[:title], description: params[:description])
    
    if set_program_sphere && @program.save
      redirect_to coach_path(@coach),  :notice => "Le programme a bien été créé."
    else
      redirect_back(fallback_location: coach_path(@coach))
    end
  end

  def update
    set_program_sphere
    if @program.update(title: params[:title], description: params[:description])
      redirect_to coach_program_path(@coach, @program),  :notice => "Votre programme a bien été modifié."
    else
      redirect_back(fallback_location: coach_program_path(@coach, @program))
    end
  end

  def destroy
    @program.destroy
    redirect_to coach_path(@coach)
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end

  def set_coach
    @coach = Coach.find(params[:coach_id])
  end

  def set_program_sphere
    if params[:program_sphere_id] != "" && ProgramSphere.create(program: @program, sphere_id: params[:program_sphere_id])
      return true
    end
  end

  def is_program_coach
    if !member_signed_in? || current_member != @coach
      redirect_to root_path, alert: "Accès non autorisé"
    end
  end

end
