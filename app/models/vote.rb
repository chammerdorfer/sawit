class Vote < ActiveRecord::Base
	belongs_to :link
	belongs_to :user
	validates :user_id, :uniqueness => {:Scope => :link_id}
end
