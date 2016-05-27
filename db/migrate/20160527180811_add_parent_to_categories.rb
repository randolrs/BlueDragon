class AddParentToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :parent_category_id, :integer
    add_column :categories, :header_display, :boolean, :default => false
  end
end
