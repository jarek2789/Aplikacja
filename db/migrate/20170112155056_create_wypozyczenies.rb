class CreateWypozyczenies < ActiveRecord::Migration
  def change
    create_table :wypozyczenies do |t|
      t.string :Kliient
      t.string :Album

      t.timestamps
    end
  end
end
