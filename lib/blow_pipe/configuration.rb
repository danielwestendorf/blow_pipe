require 'singleton'

module BlowPipe
  class Configuration
    include Singleton
    
    cattr_accessor :mount_at, :strategy, :orm
    
    @@mount_at = '/blowpipe'
    @@strategy = :transaction
    @@orm       = :active_record
  end
  
  mattr_accessor :configuration
  @@configuration = Configuration

  def self.setup
    yield @@configuration
  end

end