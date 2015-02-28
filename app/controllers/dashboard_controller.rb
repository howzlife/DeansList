class DashboardController < ApplicationController
	def index
		@courses = Course.All
	end
end
