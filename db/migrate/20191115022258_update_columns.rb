class UpdateColumns < ActiveRecord::Migration[5.2]
  def change
    remove_columns :pin_releases, :release_date
  end
end
