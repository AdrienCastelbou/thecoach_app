class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :username
      t.text :description
      t.belongs_to :city, index: true 
      t.timestamps
    end
  end
end
