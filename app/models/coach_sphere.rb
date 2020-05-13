class CoachSphere < ApplicationRecord
  belongs_to :coach
  belongs_to :sphere
  validates :sphere_id, :uniqueness => { :scope => :coach_id }
end
