class ApplicationController < ActionController::Base
  protect_from_forgery

private
  def fetch_group
    @group ||= Group.find(params[:group_id]) if params[:group_id]
  end
end
