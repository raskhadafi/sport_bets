module ApplicationHelper
  def final_groups
    @final_groups ||= Group.finals
  end

  def start_groups
    @start_groups ||= Group.start
  end

  def team_collection(group)
    group.matches.map { |e| e.opponent_a  }.uniq
  end
end
