# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :espn_updater => :environment do
  ESPNScraper.run
end

task :cbs_updater => :environment do
  CBSScraper.run
end

task :yahoo_updater => :environment do
  YahooScraper.run
end

task :update_all => :environment do
  ESPNScraper.run
  CBSScraper.run
  YahooScraper.run
  GetBoxscores.run
end
