class HalfFinalBetsController < ApplicationController
  inherit_resources

  def create
    @half_final_bet = HalfFinalBet.new(params[:half_final_bet])
    @half_final_bet.user = current_user

    create! do |success, failure|
      success.html { redirect_to current_user }
    end
  end
end
