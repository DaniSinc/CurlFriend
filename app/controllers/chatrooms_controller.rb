class ChatroomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @chatrooms = Chatroom.all
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
  end
end
