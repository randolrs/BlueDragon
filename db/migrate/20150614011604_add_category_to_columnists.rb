class AddCategoryToColumnists < ActiveRecord::Migration
  def change
    add_column :columnists, :category, :string
  end
end
