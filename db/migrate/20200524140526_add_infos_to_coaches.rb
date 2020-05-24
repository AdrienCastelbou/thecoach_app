class AddInfosToCoaches < ActiveRecord::Migration[5.2]
  def change
    add_column :coaches, :experience, :text
  end
end
