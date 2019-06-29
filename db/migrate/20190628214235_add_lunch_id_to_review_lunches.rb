class AddLunchIdToReviewLunches < ActiveRecord::Migration[5.2]
  def change
    add_column :review_lunches, :lunch_id, :integer
  end
end
