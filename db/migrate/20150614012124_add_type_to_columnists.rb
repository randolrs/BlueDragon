class AddTypeToColumnists < ActiveRecord::Migration
  def change
    add_column :columnists, :type, :string
  end
end
