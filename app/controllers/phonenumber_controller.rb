class PhoneNumber < ApplicationController
	def new
		@phonenumber = PhoneNumber.new

		respond_to do |format|
			format.html
			format.json {render json: @phonenumber}
		end
	end
end