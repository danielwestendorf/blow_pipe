module BlowPipe
  class Engine < ::Rails::Engine
    isolate_namespace BlowPipe
    
    config.after_initialize do |app|
      app.routes.prepend do
        mount BlowPipe::Engine => BlowPipe.configuration.mount_at
      end
    end
  end
end
