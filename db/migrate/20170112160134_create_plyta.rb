class CreatePlyta < ActiveRecord::Migration
  def change
    create_table :plyta do |t|
      t.string :nazwa
      t.string :rodzaj
      t.string :gatunek

      t.timestamps
    end
  end
end
