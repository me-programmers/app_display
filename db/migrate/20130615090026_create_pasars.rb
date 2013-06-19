class CreatePasars < ActiveRecord::Migration
  def change
    create_table :pasars do |t|
      t.string :nama
      t.string :lokasi

      t.timestamps
    end
  end
end
