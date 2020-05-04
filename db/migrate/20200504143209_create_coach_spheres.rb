class CreateCoachSpheres < ActiveRecord::Migration[5.2]
  def change
    create_table :coach_spheres do |t|
      t.belongs_to :coach, index: true 
      t.belongs_to :sphere, index: true 
      t.timestamps
    end
  end
end
