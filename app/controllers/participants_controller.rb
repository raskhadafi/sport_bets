class ParticipantsController < ApplicationController
  inherit_resources

  def create
    create! do |success, failure|
      success.html { redirect_to participants_path }
    end
  end
end
