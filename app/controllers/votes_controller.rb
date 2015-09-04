class VotesController < ApplicationController
	before_filter :authenticate_user!

	def show
	
	end

	def new
		@vote = Vote.new
	end

	def create
		@vote = current_user.votes.create(vote_params)
		redirect_to :back
	end

	def vote_params
      params.require(:vote).permit(:up, :user_id, :link_id)
    end
end
