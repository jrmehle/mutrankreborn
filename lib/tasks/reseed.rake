namespace :db do
  namespace :seed do
    desc "Regenerate seeds"
    task :regenerate => :environment do
      require 'database_cleaner'

      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean

      Rake::Task["db:seed"].invoke
    end
  end
end
