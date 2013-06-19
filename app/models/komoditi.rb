class Komoditi < ActiveRecord::Base
  belongs_to :pasar
  attr_accessible :harga, :nama_komoditi
end
