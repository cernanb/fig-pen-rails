class CreatePinReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :pin_releases do |t|
      t.integer :edition
      t.integer :figpin_id
      t.datetime :release_date
      t.integer :pin_id
      t.integer :company_id
      t.boolean :exclusive
      t.integer :volume_size
      t.timestamps
    end
  end
end
