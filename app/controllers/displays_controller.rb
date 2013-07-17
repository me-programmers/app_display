class DisplaysController < ApplicationController
	def main
		@pasars = Pasar.all		
	end
	def main2
		@pasars = Pasar.all		
	end
	def theme1
		@pasars = Pasar.all		
	end
	def theme2
		@pasars = Pasar.all		
	end
	def theme3
		@pasars = Pasar.all	
	end
	def theme4
		@market = MarketComparison.all
	end
	def theme5
		@getperiod = TbPeriod.all
		@getpetanipg1 = MarketComparison.select("komoditi, petani, jenis").where("petani > 0 and jenis ='Sayuran'").limit(4)
		@getpetanipg2 = MarketComparison.select("komoditi, petani, jenis").where("petani > 0 and jenis ='Sayuran'").limit(4).offset(4)
		@getpetanipg3 = MarketComparison.select("komoditi, petani, jenis").where("petani > 0 and jenis ='Sayuran'").limit(4).offset(8)
		@geteceranpg1 = MarketComparison.select("komoditi, eceran, jenis").where("eceran > 0 and jenis ='Sayuran'").limit(4)
		@geteceranpg2 = MarketComparison.select("komoditi, eceran, jenis").where("eceran > 0 and jenis ='Sayuran'").limit(4).offset(4)
		@geteceranpg3 = MarketComparison.select("komoditi, eceran, jenis").where("eceran > 0 and jenis ='Sayuran'").limit(4).offset(8)
		@geteceranpg4 = MarketComparison.select("komoditi, eceran, jenis").where("eceran > 0 and jenis ='Beras'").limit(4)
		@geteceranpg5 = MarketComparison.select("komoditi, eceran, jenis").where("eceran > 0 and jenis ='Palawija'").limit(5)
		@getgrosir1pg1 = MarketComparison.select("komoditi, grosir1, jenis").where("grosir1 > 0 and jenis='Sayuran'").limit(4)
		@getgrosir1pg2 = MarketComparison.select("komoditi, grosir1, jenis").where("grosir1 > 0 and jenis='Sayuran'").limit(4).offset(4)
		@getgrosir1pg3 = MarketComparison.select("komoditi, grosir1, jenis").where("grosir1 > 0 and jenis='Sayuran'").limit(4).offset(8)
		@getgrosir2pg4 = MarketComparison.select("komoditi, grosir2, jenis").where("grosir2 > 0 and jenis='Palawija'").limit(5)		
	end
end
