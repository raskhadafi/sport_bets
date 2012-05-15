class GroupBetsController < ApplicationController
  inherit_resources

  before_filter :fetch_group, except: [:update, :create]

  def new
    @group_bet = GroupBet.new(group: @group)

    new!
  end

  def index
    @group_bets = @group.group_bets

    index!
  end

  def create
    create! do |success, failure|
      success.html do
        redirect_to group_group_bets_path(@group_bet.group)
      end
    end
  end
end
