require 'database_cleaner'
p "STARTING DB CLEANER"
DatabaseCleaner[BlowPipe.configuration.orm].strategy = BlowPipe.configuration.strategy
DatabaseCleaner.logger = Rails.logger
DatabaseCleaner.start
