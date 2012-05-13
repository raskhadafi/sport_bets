class MatchesController < ApplicationController
  inherit_resources
  before_filter :fetch_group, except: [:update]

  def update
    update! do |success, failure|
      success.html do
        @match.calculate_score

        redirect_to group_path(@match.group)
      end
    end
  end
end
