class UpdateProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :pins, :figpin_id, :integer
    remove_column :pin_releases, :figpin_id
  end
end
