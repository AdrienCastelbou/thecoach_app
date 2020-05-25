class DropProgramsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :programs
    drop_table :program_spheres
  end
end
