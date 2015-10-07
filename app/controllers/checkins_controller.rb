class CheckinsController < ApplicationController

	def new
		@checkin = Checkin.new
	end

	def ultimos_checkins(quantity = 5)
    	checkins.order('id DESC').limit(quantity)
  	end

	def create
		@checkin = Checkin.new(params[:Checkin])
		if @checkin.save
			redirect_to new_checkin_path
		end
	end


end
