json.extract! post, :id, :title, :post, :user_id, :is_removed, :created_at, :updated_at
json.url post_url(post, format: :json)
