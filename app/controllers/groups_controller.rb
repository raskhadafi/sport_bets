class GroupsController < ApplicationController
  inherit_resources
  respond_to :html, :js

  def finish
    @group = Group.find(params[:id])
    @group.close

    show!
  end
end
