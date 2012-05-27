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

  def group_bets_links(group_bets)
    existing_group_ids = group_bets.map(&:group).map(&:id)
    links = ''

    Group.start.each do |group|
      next if existing_group_ids.include?(group.id)

      links += content_tag :li do
        link_to group, new_group_group_bet_path(group)
      end
    end

    links.html_safe
  end

  def additional_bets_links(additional_bets)
    "buhu"
  end
end
