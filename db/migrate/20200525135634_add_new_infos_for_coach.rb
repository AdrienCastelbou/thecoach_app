class AddNewInfosForCoach < ActiveRecord::Migration[5.2]
  def change
    add_column :coaches, :tariff, :float
    add_column :coaches, :subtitle, :string
  end
end
