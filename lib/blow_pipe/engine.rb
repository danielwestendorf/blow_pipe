require 'database_cleaner'

module BlowPipe
  class Engine < ::Rails::Engine
    isolate_namespace BlowPipe
    
    config.after_initialize do |app|
      
      DatabaseCleaner[BlowPipe.configuration.orm].strategy = BlowPipe.configuration.strategy
      DatabaseCleaner.start
      
      app.routes.prepend do
        mount BlowPipe::Engine => BlowPipe.configuration.mount_at
      end
    end
  end
end
