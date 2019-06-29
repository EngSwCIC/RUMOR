class AddUserIdToReviewDinners < ActiveRecord::Migration[5.2]
  def change
    add_column :review_dinners, :user_id, :integer
  end
end
