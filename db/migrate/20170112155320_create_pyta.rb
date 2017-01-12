class CreatePyta < ActiveRecord::Migration
  def change
    create_table :pyta do |t|
      t.string :nazwa
      t.string :rodzaj
      t.string :gatunek

      t.timestamps
    end
  end
end
