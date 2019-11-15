class UpdateEditionForPinReleases < ActiveRecord::Migration[5.2]
  def change
    change_column :pin_releases, :edition, :string
  end
end
