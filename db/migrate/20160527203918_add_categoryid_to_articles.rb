class AddCategoryidToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :category_1_id, :integer, :default => 0
    add_column :articles, :category_2_id, :integer, :default => 0
  end
end
