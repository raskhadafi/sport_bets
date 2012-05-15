module ApplicationHelper
  def final_groups
    Group.finals
  end

  def start_groups
    Group.start
  end
end
