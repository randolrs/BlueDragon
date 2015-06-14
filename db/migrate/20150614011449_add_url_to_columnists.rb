class AddUrlToColumnists < ActiveRecord::Migration
  def change
    add_column :columnists, :url, :string
  end
end
