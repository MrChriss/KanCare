class CareAction < ApplicationRecord
  belongs_to :user
  enum category: { poop: 0, walk: 1, food: 2, play: 3 }

  def start_time
    starts_at || created_at
  end
end
