class AddVideourlToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :video_url, :string
    add_column :articles, :display_video, :boolean, :default => false
  end
end
