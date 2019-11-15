class UpdateAdditionalColumns < ActiveRecord::Migration[5.2]
  def change
    remove_columns :pin_releases, :company_id
  end
end
