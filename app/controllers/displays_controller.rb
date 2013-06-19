class DisplaysController < ApplicationController
	def main
		@pasars = Pasar.all		
	end
	
end
