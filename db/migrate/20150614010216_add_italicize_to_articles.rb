class AddItalicizeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :italicize, :boolean
  end
end
