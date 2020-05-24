class SpheresController < ApplicationController
  before_action :set_sphere, only: [:show, :edit, :update, :destroy]

  def index
    
  end
  def show
    @coaches = @sphere.coaches
  end

  def new

  end

  def edit

  end

  def create
  end

  def update

  end

  def destroy
    
  end

  private 

  def set_sphere
    @sphere = Sphere.find(params[:id])
  end
end
