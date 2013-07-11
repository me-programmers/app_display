class CreateMarketComparisons < ActiveRecord::Migration
  def change
    create_table :market_comparisons do |t|
      t.string :komoditi
      t.string :marketbg
      t.text :marketloc
      t.decimal :grosir1
      t.decimal :grosir2
      t.decimal :grosir3
      t.decimal :grosir4
      t.decimal :grosir5
      t.decimal :petani
      t.decimal :eceran

      t.timestamps
    end
  end
end
