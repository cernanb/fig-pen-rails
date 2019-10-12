class AddCompanyIdToPins < ActiveRecord::Migration[5.2]
  def change
    add_column :pins, :company_id, :integer
  end
end
