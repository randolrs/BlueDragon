class CreateColumnists < ActiveRecord::Migration
  def change
    create_table :columnists do |t|
      t.string :name

      t.timestamps
    end
  end
end
