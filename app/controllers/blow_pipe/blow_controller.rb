require_dependency "blow_pipe/application_controller"
require 'active_record/fixtures'

module BlowPipe
  class BlowController < ApplicationController
    def it
      DatabaseCleaner.clean
      if BlowPipe.configuration.strategy != :transaction
        $fixtures ||= Dir[Rails.root.join('test', 'fixtures', '*.yml')].collect {|f| f.split('/')[-1][0..-5]}
        $fixtures.each do |fixture|
          ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), fixture)
        end
      end
      render text: 'true', status: 200
    end
  end
end
