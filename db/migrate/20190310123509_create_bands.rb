class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :best_track
      t.text :description
      t.text :image
      t.integer :from_year
      t.string :to_year

      t.timestamps
    end
  end
end
