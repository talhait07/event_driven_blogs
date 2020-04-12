namespace :rabbitmq do
  desc "Setup routing"
  task :setup do
    require "bunny"

    conn = Bunny.new
    conn.start

    ch = conn.create_channel

    # connect one exchange to multiple queues
    x = ch.fanout("blog.posts")
    puts    ch.queue("blog_post_mc.posts", durable: true).bind("blog.posts")
    ch.queue("blog_post_mc.posts", durable: true).bind("blog.posts")

    # connect mutliple exchanges to the same queue
    x = ch.fanout("blog_post_mc.page_views")
    ch.queue("blog_post_mc.page_views", durable: true).bind("blog.page_views")

    x = ch.fanout("blog_post_mc.page_views")
    ch.queue("blog_post_mc.page_views", durable: true).bind("blog.page_views")

    conn.close
  end
end