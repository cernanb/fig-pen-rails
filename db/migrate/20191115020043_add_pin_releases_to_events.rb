class AddPinReleasesToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :pin_releases, :event_id, :integer
  end
end
