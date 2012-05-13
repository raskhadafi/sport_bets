class GroupBetsController < ApplicationController
  inherit_resources

  before_filter :fetch_group

  def new
    @group_bet = GroupBet.new(group: @group)

    new!
  end

  def create
    create! do |success, failure|
      success.html do
        redirect_to group_group_bets_path(@group_bet.group)
      end
    end
  end
end
