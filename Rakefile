# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require 'rdoc/rdoc'
require 'metric_fu'

MetricFu.configuration.configure_metrics.each do |metric|
  if [:saikuro, :flog].include?(metric.name)
    metric.enabled = true
  else
    metric.enabled = false
  end
end
Rails.application.load_tasks
