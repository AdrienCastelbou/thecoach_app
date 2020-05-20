class Sphere < ApplicationRecord
  has_many :coach_spheres
  has_many :coaches, through: :coach_spheres
  has_many :program_spheres
  has_many :programs, through: :program_spheres

  has_one_attached :sphere_picture
end
