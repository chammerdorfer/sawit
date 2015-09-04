class PagesController < ApplicationController
	def index
		# @per_page = params[:per_page] ||= 5
		# @page = params[:page] ||=1
		@links = Link.order('created_at DESC').paginate(:page => params[:page], :per_page => 25)
	end
end
