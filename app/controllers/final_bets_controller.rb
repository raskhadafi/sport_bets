class FinalBetsController < ApplicationController
  inherit_resources

  def create
    @final_bet = FinalBet.new(params[:final_bet])
    @final_bet.user = current_user
raise 'go'
    create! do |failure, success|
      success.html { redirect_to current_user }
    end
  end
end
