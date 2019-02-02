class AddStartEndAtToCareActions < ActiveRecord::Migration[5.2]
  def change
    add_column :care_actions, :starts_at, :datetime
    add_column :care_actions, :ends_at, :datetime
  end
end
