class AddHardCaseToPinRelease < ActiveRecord::Migration[5.2]
  def change
    add_column :pin_releases, :hard_case, :boolean
  end
end
