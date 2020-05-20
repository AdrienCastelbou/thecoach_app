class StaticPagesController < ApplicationController
  def index
    @coaches = Coach.all
    @spheres = Spheres.all
    @programs = Program.all
  end
end
