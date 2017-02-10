class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.column :name, :string
      t.column :price, :float
      t.column :artist, :string
      t.column :release_date, :date
    end
  end
end
