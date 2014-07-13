class MessagesController < ApplicationController
	def create
		@message = Message.create(dialogue: params[:dialogue], chat_id: params[:chat_id], user_id: current_user.id)
		redirect_to chat_path(params[:chat_id])
	end
end