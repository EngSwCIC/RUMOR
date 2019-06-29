class AddUserIdToReviewLunches < ActiveRecord::Migration[5.2]
  def change
    add_column :review_lunches, :user_id, :integer
  end
end
