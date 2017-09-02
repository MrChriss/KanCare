class CareAction < ApplicationRecord
  belongs_to :user
  enum category: { poop: 0, walk: 1, food: 2, play: 3 }

  # TODO: remove n + 1!
  def self.care_actions_for_date(date)
    CareAction.select do |care_action|
      care_action.created_at.between?(date.beginning_of_day, date.end_of_day)
    end
  end
end
