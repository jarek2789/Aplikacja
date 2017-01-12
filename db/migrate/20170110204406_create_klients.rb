class CreateKlients < ActiveRecord::Migration
  def change
    create_table :klients do |t|
      t.string :nazwisko
      t.string :imie

      t.timestamps
    end
  end
end
