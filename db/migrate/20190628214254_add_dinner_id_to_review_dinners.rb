class AddDinnerIdToReviewDinners < ActiveRecord::Migration[5.2]
  def change
    add_column :review_dinners, :dinner_id, :integer
  end
end
