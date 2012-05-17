class GroupBetsController < ApplicationController
  inherit_resources

  before_filter :authenticate_user!
  before_filter :fetch_group, except: [:update, :create]

  def new
    @group_bet = GroupBet.new(group: @group)

    new!
  end

  def index
    @group_bets   = @group.group_bets if @group
    @group_bets ||= current_user.group_bets if current_user

    index!
  end

  def create
    @group_bet = GroupBet.new(params[:group_bet])
    @group_bet.user = current_user

    create! do |success, failure|
      success.html do
        redirect_to group_group_bets_path(@group_bet.group)
      end
    end
  end
end
