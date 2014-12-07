class WelcomeController < ApplicationController
  
  @@players = []

  def index
    @messages = Message.all.order('created_at DESC').limit(50).reverse()
    @@players += [get_player.email.gsub(/[^0-9A-Za-z]/, '')]
    @players = @@players
    @thisplayer = get_player.email
  end

  def new_message
    @message = Message.new
    @message.content = params[:message][:content]
    @message.name = get_player.email
    @message.player_id = get_player.id
    @message.save!
    return render :nothing => true
  end
end
