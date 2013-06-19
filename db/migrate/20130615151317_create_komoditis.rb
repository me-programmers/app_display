class CreateKomoditis < ActiveRecord::Migration
  def change
    create_table :komoditis do |t|
      t.string :nama_komoditi
      t.decimal :harga
      t.references :pasar

      t.timestamps
    end
    add_index :komoditis, :pasar_id
  end
end
