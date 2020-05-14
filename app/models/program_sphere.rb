class ProgramSphere < ApplicationRecord
  belongs_to :sphere
  belongs_to :program
  validates :sphere_id, :uniqueness => { :scope => :program_id }
end
