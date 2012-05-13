class TeamsController < ApplicationController
  inherit_resources

  def index
    @group = Group.find(params[:group_id])
    @teams = Team.by_group(@group)

    index!
  end
end
