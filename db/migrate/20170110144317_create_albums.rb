class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :nazwa
      t.string :wykonawca

      t.timestamps
    end
  end
end
