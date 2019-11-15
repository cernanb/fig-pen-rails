class AddRetailerIdToPinReleases < ActiveRecord::Migration[5.2]
  def change
    add_column :pin_releases, :retailer_id, :integer
  end
end
