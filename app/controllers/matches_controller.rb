class MatchesController < ApplicationController
  inherit_resources

  def update
    update! do |success, failure|
      success.html do
        @match.calculate_score

        redirect_to group_path(@match.group)
      end
    end
  end
end
