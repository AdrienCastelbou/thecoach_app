class AvatarController < ApplicationController
  def create
    @coach = Coach.find(params[:coach_id])
    @coach.avatar.attach(params[:avatar]) if params[:avatar]
    redirect_to(coach_path(@coach))
  end
end
