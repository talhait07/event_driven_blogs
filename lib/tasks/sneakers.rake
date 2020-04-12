namespace :sneakers do
  desc "Setup sneakers"
  task :run do
    require 'sneakers/tasks'

    Rails.application.load_tasks
  end
end