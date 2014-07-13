class ChatsController < ApplicationController
	def show
		@chat = Chat.find(params[:id])
	end

	def index
	end
	
end