require 'resque'

module App
  module ScanJob
    @queue = :scan_queue

    def self.perform(params)
      puts params
    end
  end
end
