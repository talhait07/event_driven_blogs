$redis = Redis::Namespace.new("blog_post_mc:#{Rails.env}", redis: Redis.new)
