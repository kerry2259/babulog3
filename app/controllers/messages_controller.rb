class MessagesController < ApplicationController
  
  before_action :set_baby

  def index
    @message = Message.new
    @messages = @baby.messages.includes(:user)
  end

  def create
    @message = @baby.messages.new(message_params)
    if @message.save
      redirect_to baby_messages_path(@baby)
    else
      @message = @baby.messages.includes(:user)
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_baby
    @baby = Baby.find(params[:baby_id])
  end
end
