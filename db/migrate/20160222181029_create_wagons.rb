class CreateWagons < ActiveRecord::Migration
  def change
    create_table :wagons do |t|
      t.string :wagon_type
      t.integer :top_place
      t.integer :bottom_place

      t.timestamps null: false
    end

    add_belongs_to :wagons, :train

  end
end
