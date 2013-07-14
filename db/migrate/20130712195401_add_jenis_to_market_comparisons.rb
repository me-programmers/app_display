class AddJenisToMarketComparisons < ActiveRecord::Migration
  def change
  	add_column :market_comparisons, :jenis, :string
  end
end
