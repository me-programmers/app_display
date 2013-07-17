class MarketComparison < ActiveRecord::Base
  default_scope order('id ASC')
  attr_accessible :eceran, :grosir1, :grosir2, :grosir3, :grosir4, :grosir5, :komoditi, :marketbg, :marketloc, :petani, :jenis
end
