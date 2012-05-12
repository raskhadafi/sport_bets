class GroupBetsController < ApplicationController
  inherit_resources

  def new
    @group = Group.find(params[:group_id])
    @group_bet = GroupBet.new(group: @group)

    new!
  end

  def show
    show! do |format|
      format.html { redirect_to groups_path }
    end
  end
end
