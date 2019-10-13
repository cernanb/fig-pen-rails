class RemoveEditionSizeFromPins < ActiveRecord::Migration[5.2]
  def change
    remove_column :pins, :edition_size
  end
end
