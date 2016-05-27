class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :default => ""
      t.string :url, :default => ""
      t.integer :top_article_id

      t.timestamps
    end
  end
end
