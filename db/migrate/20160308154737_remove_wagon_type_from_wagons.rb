class RemoveWagonTypeFromWagons < ActiveRecord::Migration
  change_table :wagons do |t|
    t.remove :wagon_type
    t.integer :number
    t.integer :side_top_place
    t.integer :side_bottom_place
    t.integer :seat_place
    t.string :type
  end
end
