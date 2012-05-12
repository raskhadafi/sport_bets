class GroupBetsController < ApplicationController
  inherit_resources

  def new
    @group = Group.find(params[:group_id])
    @group_bet = GroupBet.new(group: @group)

    new!
  end

  def create
    create! do |success, failure|
      success.html { redirect_to group_group_bets_path(@group_bet.group) }
    end
  end
end
