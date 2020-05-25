class StaticPagesController < ApplicationController
  def index
    @coaches = Coach.all
    @spheres = Sphere.all
    @cities = City.all
  end
end
