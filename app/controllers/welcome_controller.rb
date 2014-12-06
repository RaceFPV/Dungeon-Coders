class WelcomeController < ApplicationController
  @@players = []

  def index
    random = Random.rand(10000000...99999999)
    @messages = Message.all.order('created_at DESC').limit(50)
    @@players += player_signed_in? ? [current_player.email.gsub(/[^0-9A-Za-z]/, '')] : ["guest-#{random}"]
    @players = @@players
    @thisplayer = player_signed_in? ? [current_player.email.gsub(/[^0-9A-Za-z]/, '')] : ["guest-#{random}"]
  end

  def new_message
    @message = Message.new
    @message.content = params[:message][:content]
    @message.name = current_player.email
    @message.player_id = current_player.id
    @message.save!
    return render :nothing => true
  end
end
