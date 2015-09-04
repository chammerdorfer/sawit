class Link < ActiveRecord::Base
		belongs_to :user
	def url
		@url
	end
	def url=(str)
		@url = str
	end


end
