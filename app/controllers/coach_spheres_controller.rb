class CoachSpheresController < ApplicationController
  def destroy
    @coach_sphere = CoachSphere.find(params[:id])
    @coach = @coach_sphere.coach
    @coach_sphere.destroy
    redirect_to coach_path(@coach)
  end
end
