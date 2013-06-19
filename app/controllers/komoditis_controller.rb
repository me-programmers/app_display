class KomoditisController < ApplicationController
	def create
		@pasar = Pasar.find(params[:pasar_id])
		@komoditi = @pasar.komoditis.create(params[:komoditi])
		redirect_to pasar_path(@pasar)
	end

	def destroy
		@pasar = Pasar.find(params[:pasar_id])
		@komoditi = @pasar.komoditis.find(params[:id])
		@komoditi.destroy
		redirect_to pasar_path(@pasar)
	end
end
