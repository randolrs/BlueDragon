class AddLeadToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :lead, :boolean
  end
end
