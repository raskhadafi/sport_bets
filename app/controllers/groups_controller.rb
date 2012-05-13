class GroupsController < ApplicationController
  inherit_resources
  respond_to :html, :js

  def finish
    show!
  end
end
