class WelcomeController < ApplicationController
  def index
    @participants = Participant.all
  end
end