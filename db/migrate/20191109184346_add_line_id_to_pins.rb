class AddLineIdToPins < ActiveRecord::Migration[5.2]
  def change
    add_column :pins, :line_id, :integer
  end
end
