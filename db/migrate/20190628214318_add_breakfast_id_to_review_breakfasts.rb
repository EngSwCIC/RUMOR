class AddBreakfastIdToReviewBreakfasts < ActiveRecord::Migration[5.2]
  def change
    add_column :review_breakfasts, :breakfast_id, :integer
  end
end
