class Program < ApplicationRecord
  belongs_to :coach
  has_many :program_spheres
  has_many :spheres, through: :program_spheres
end
