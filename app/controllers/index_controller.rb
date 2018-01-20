class IndexController < ApplicationController
	def index
		@konnec_register = KonnecRegister.new
	end
end
