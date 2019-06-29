class AddUserIdToReviewBreakfasts < ActiveRecord::Migration[5.2]
  def change
    add_column :review_breakfasts, :user_id, :integer
  end
end
