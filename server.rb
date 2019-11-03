require 'sinatra'
require 'resque'

require_relative 'app/scan_job.rb'

set :bind, '0.0.0.0'
Resque.redis = 'redis:6379'

get '/api/scan' do
  Resque.enqueue(App::ScanJob, 'foo')
  return :ok
end
