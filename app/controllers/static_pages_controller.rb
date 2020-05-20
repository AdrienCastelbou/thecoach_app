class StaticPagesController < ApplicationController
  def index
    @coaches = Coach.all
    @spheres = Sphere.all
    @programs = Program.all
    @cities = City.all
  end
end
