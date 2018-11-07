json.extract! customer_satisfaction, :id, :user_group, :meal, :rating, :like, :disgust, :suggestion, :created_at, :updated_at
json.url customer_satisfaction_url(customer_satisfaction, format: :json)
