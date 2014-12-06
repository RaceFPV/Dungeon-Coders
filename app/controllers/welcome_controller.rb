class WelcomeController < ApplicationController
  @@players = []

  def index
    @@players += [current_or_guest_player.email.gsub(/[^0-9A-Za-z]/, '')]
    @players = @@players
  end
end
