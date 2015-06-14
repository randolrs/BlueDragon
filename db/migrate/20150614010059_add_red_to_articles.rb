class AddRedToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :red, :boolean
  end
end
