class UsersController < ApplicationController
  inherit_resources

  def show
    @user             = User.find(params[:id])
    @half_final_bet   = @user.half_final_bet
    @half_final_bet ||= @user.build_half_final_bet
    @final_bet        = @user.final_bet
    @final_bet      ||= @user.build_final_bet

    show!
  end
end
