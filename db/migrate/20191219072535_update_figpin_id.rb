class UpdateFigpinId < ActiveRecord::Migration[5.2]
  def change
    change_column :pins, :figpin_id, :string
  end
end
