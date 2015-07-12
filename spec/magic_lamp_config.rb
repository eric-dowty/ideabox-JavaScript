require 'database_cleaner'

MagicLamp.configure do |config|

  DatabaseCleaner.strategy = :transaction

  config.before_each do
    DatabaseCleaner.clean
    DatabaseCleaner.start
  end

  # config.after_each do 
  #   DatabaseCleaner.clean
  # end

end