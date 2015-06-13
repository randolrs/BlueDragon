class AddImgoptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :imgoption, :boolean
  end
end
