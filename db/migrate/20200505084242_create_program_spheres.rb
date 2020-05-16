class CreateProgramSpheres < ActiveRecord::Migration[5.2]
  def change
    create_table :program_spheres do |t|
      t.belongs_to :program, index: true 
      t.belongs_to :sphere, index: true 
      t.timestamps
    end
  end
end
