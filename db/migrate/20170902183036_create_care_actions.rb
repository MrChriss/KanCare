class CreateCareActions < ActiveRecord::Migration[5.1]
  def change
    create_table :care_actions do |t|
      t.references :user, foreign_key: true
      t.integer :category

      t.timestamps
    end
  end
end
