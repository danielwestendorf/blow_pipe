require_dependency "blow_pipe/application_controller"

module BlowPipe
  class BlowController < ApplicationController
    def it
      DatabaseCleaner.clean
      render text: 'true', status: 200
    end
  end
end
