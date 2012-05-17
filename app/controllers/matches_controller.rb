class MatchesController < ApplicationController
  inherit_resources
  before_filter :authenticate_user!
  before_filter :fetch_group, except: [:update]

  def update
    update! do |success, failure|
      success.html do
        @match.next

        redirect_to group_path(@match.group)
      end
    end
  end
end
