class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :title
      t.text :description
      t.belongs_to :coach, index: true 
      t.timestamps
    end
  end
end
