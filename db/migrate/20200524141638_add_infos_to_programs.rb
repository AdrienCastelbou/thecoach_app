class AddInfosToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :price, :integer
    add_column :programs, :duration, :string
  end
end
