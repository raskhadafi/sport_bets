class MatchesController < ApplicationController
  inherit_resources

  def show
    redirect_to groups_path
  end
end
