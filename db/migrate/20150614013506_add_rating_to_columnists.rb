class AddRatingToColumnists < ActiveRecord::Migration
  def change
    add_column :columnists, :rating, :integer
  end
end
